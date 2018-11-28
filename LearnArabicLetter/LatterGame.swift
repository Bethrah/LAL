//
//  LatterGame.swift
//  LearnArabicLetter
//
//  Created by بدور on 1/23/17.
//  Copyright © 2017 بدور. All rights reserved.
//
import SpriteKit
import AVFoundation
class LatterGame: SKScene {
    
    ////// final shap look
    var FLetter : [SKShapeNode] = []
    ////timer info
    var seconds = 60
    var score = 3
    var TimeLabel : SKLabelNode?
    var scoreLabel : SKLabelNode?
    var GTimer = Timer()
    
    var soundBell: SKAction?
    ///////
    var GId : Int = 0
    
    // path used to draw on charecter
    var pathToDraw: CGMutablePath?
    var myLine: SKShapeNode?
    
    //sound
    var soundLetter : SKAction?
    var bgMusic: AVAudioPlayer?
    
    
    // hand node
    var Hand : SKSpriteNode?
    var actionMoveDone :SKAction?
    
    var newHand : SKSpriteNode?
    
    let color = UIColor(red: 0.577, green: 0.898, blue: 0.946, alpha: 0.500)
    let color2 = UIColor(red: 1.000, green: 0.819, blue: 0.531, alpha: 1.000)
    
    
    /////////
    var StartPoint :CGPoint?
    var IN = false
    var partOfletter : [CGMutablePath] = []
    var pathOfletter : [CGMutablePath] = []
    var endOfletter : [CGMutablePath] = []
    var Button : SKShapeNode?
    var Buttonp : SKShapeNode?
    
    //// colors menu
    var colorsArray : [UIColor] = []
    var colorsButtons : [SKSpriteNode] = []
    
    //blue
    let c1 = UIColor(red:0.165, green:0.431, blue:0.733, alpha: 1)
    //green
    let c2 = UIColor(red:0.337, green:0.729, blue:0.282, alpha: 1)
    //red
    let c3 = UIColor(red:0.941, green:0.337, blue:0.345, alpha: 1)
    //pink
    let c4 = UIColor(red:0.937, green:0.337, blue:0.627, alpha: 1)
    //purple
    let c5 = UIColor(red:0.525, green:0.376, blue:0.663, alpha: 1)
    //tiffany
    let c6 = UIColor(red:0.522, green:0.816, blue:0.804, alpha: 1)
    //yellow
    let c7 = UIColor(red:0.98, green:0.929, blue:0.522, alpha: 1)
    
    var fillingColor = UIColor(red: 1.000, green: 0.819, blue: 0.531, alpha: 1.000)
    
    var nameOfColor = "0"
    ///////
    
    
    var Index = 0
    var circle : SKShapeNode?
    var once: Int = 0
    
    //////
    var wait1 : SKAction?
    
    override func didMove(to view: SKView) {
        ////////////////color
        //// Color Declarations
        
        //  self.size = view.bounds.size
        // self.scaleMode = .aspectFit
        
        wait1 = SKAction.wait(forDuration: 0.5)
        do{bgMusic = try AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "Little-waltz", ofType: "mp3")!) as URL)
            bgMusic?.numberOfLoops = -1
        }
            
        catch {print ("Invalid")}
        playSound()
        
        
        
        ///////
        
        soundLetter = SKAction.playSoundFileNamed(String(GId)+".m4a", waitForCompletion: true)
        
        ////timer setting
        run(soundLetter!)
        
        
        GTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerS), userInfo: nil, repeats: true)
        TimeLabel  = self.childNode(withName: "Seconds") as! SKLabelNode?
        scoreLabel  = self.childNode(withName: "Star") as! SKLabelNode?
        TimeLabel?.text =  String(seconds)
        scoreLabel?.text =  String(score)
        
        // colors
        for i in 0 ... 6 {
            colorsButtons.append(self.childNode(withName:"c"+String(i+1))! as! SKSpriteNode)
            
        }
        
        colorsArray = [c1, c2, c3, c4, c5, c6, c7]
        
        for m in 0..<colorsButtons.count
        {
            
            colorsButtons[m].color = colorsArray[m]
            
        }
        
        
        
        // main view for letter
        
        if (UIDevice.current.userInterfaceIdiom == .phone){
            var letter = LetterDrawing()
            partOfletter = letter.setLetter(id: GId).prt
            pathOfletter = letter.setLetter(id: GId).pth
            endOfletter = letter.setLetter(id: GId).end
        }
        else if (UIDevice.current.userInterfaceIdiom == .pad){
            var letter = LetterDrawingiPad()
            partOfletter = letter.setLetter(id: GId).prt
            pathOfletter = letter.setLetter(id: GId).pth
            endOfletter = letter.setLetter(id: GId).end
        }
        
        for i in 0 ..< partOfletter.count
        {
            
            var node = SKShapeNode.init(path: partOfletter[i])
            //  var node2 = SKShapeNode.init(path: pathOfletter[i])
            node.path =  partOfletter[i]
            node.fillColor = color
            node.strokeColor = c1
            //node.strokeShader = SKShader
            node.setScale(1)
            self.addChild(node)
            
            
        }
        
        // init tha path will be used for drawing
        pathToDraw =  CGMutablePath()
        myLine = SKShapeNode(path:pathToDraw!)
        myLine?.path = pathToDraw
        
        /// run the hand
        run(SKAction.repeatForever(
            SKAction.sequence([
                SKAction.run(addHand),
                SKAction.wait(forDuration: 3.0)
                ])
        ))
        let clock = self.childNode(withName: "clock")
        var circleBorder = SKShapeNode.init(circleOfRadius: 50)
        
        circle = SKShapeNode.init(circleOfRadius: 50)
        circle?.fillColor = UIColor.white
        circle?.alpha = 0.2
        circle?.zRotation = CGFloat.pi/2
        circle?.lineWidth = 0.0
        clock?.addChild(circle!)
        
        let inC = self.childNode(withName: "inC")
        var ci = SKShapeNode.init(circleOfRadius: 40)
        ci.fillColor = UIColor.gray
        ci.zRotation = CGFloat.pi/2
        ci.alpha = 0.0
        inC?.addChild(ci)
        
        countdown(circle: circle!, steps: 20, duration: 20)
        
        
        
    }
    
    
    
    func explosion(pos: CGPoint) {
        var emitterNode = SKEmitterNode(fileNamed: "spaks.sks")
        emitterNode?.particleSize = CGSize(width: 60, height: 60)
        emitterNode?.particlePosition = pos
        self.addChild(emitterNode!)
        // Don't forget to remove the emitter node after the explosion
        self.run(SKAction.wait(forDuration: 2), completion: { emitterNode?.removeFromParent() })
        
    }
    
    func playSound(){
        bgMusic?.play()
    }
    
    func pauseSound(){
        bgMusic?.pause()}
    
    func stopSound(){
        bgMusic?.stop()}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        var Home = self.childNode(withName: "home")
        for t in touches
        {
            self.touchDown(atPoint: t.location(in: self))
            
            let loc  = t.location(in: self)
            
            for i in 0 ..< colorsButtons.count {
                
                var B = colorsButtons[i]
                if (B.contains(loc))
                {
                    
                    fillingColor = colorsButtons[i].color
                    nameOfColor = String(i+1)
                }                }
            
            if (Home?.contains(loc))! {
                stopSound()
                Home?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                    if (UIDevice.current.userInterfaceIdiom == .phone){
                        var phoneMainScene = SKScene(fileNamed: "GameScene")
                        //   mainScene?.size = (self.view?.bounds.size)!
                        phoneMainScene?.scaleMode = .aspectFill
                        self.view?.presentScene(phoneMainScene)}
                    else if (UIDevice.current.userInterfaceIdiom == .pad){
                        var padMainScene = SKScene(fileNamed: "GameScenePad")
                        //   mainScene?.size = (self.view?.bounds.size)!
                        padMainScene?.scaleMode = .aspectFill
                        self.view?.presentScene(padMainScene)
                    }
                })
            }}}
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        var Home = self.childNode(withName: "home")
        for t in touches {
            
            self.touchMoved(toPoint: t.location(in: self))
            
            
            var loc =  t.location(in: self)
            
            
            if (Home?.contains(loc))!
            {      var no = Home?.copy() as! SKSpriteNode
                no.zPosition = 5
                self.addChild(no)
                no.run(SKAction.sequence([SKAction.scale(by: 1.1, duration: 0.2),SKAction.removeFromParent()]))
            }
            for i in 0 ..< colorsButtons.count {
                var B = colorsButtons[i]
                if (B.contains(loc))
                {
                    var no = B.copy() as! SKSpriteNode
                    no.zPosition = 5
                    self.addChild(no)
                    no.run(SKAction.sequence([SKAction.scale(by: 1.1, duration: 0.2),SKAction.removeFromParent()]))
                }}}}
    
    
    
    func setID (id: Int){
        GId = id
    }
    var lastTime = 60
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        var Home = self.childNode(withName: "home")
        
        for t in touches {
            
            var loc =  t.location(in: self)
            
            if (Home?.contains(loc))! {
                
                var no = Home?.copy() as! SKSpriteNode
                no.zPosition = 5
                
                self.addChild(no)
                
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
            
            for i in 0 ..< colorsButtons.count {
                
                var B = colorsButtons[i]
                if (B.contains(loc))
                {
                    var no = colorsButtons[i].copy() as! SKSpriteNode
                    no.zPosition = 5
                    self.addChild(no)
                    
                    no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
                    
                }                }
            
        }
        
        
        //add in the end of touchesEnded method
        lastTime = seconds
        once = 0
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if  Index < partOfletter.count
        {
            var SR = partOfletter[Index]
            //user should start from start rectangle
            if SR.contains(pos){
                IN = true
                StartPoint = pos
                
                var end = endOfletter[Index]
                if end.contains(pos){
                    if let p = self.myLine?.copy() as! SKShapeNode? {
                        pathToDraw?.move(to: StartPoint!)
                        pathToDraw?.addLine(to: pos)
                        p.path = pathToDraw
                        p.lineCap = CGLineCap.round
                        p.strokeColor = fillingColor
                        
                        p.lineWidth = 5
                        p.zPosition = 3
                        p.setScale(1)
                        self.addChild(p)
                        
                        var node = SKShapeNode.init(path: partOfletter[Index])
                        node.path = partOfletter[Index]
                        
                        node.fillColor = fillingColor
                        node.name = nameOfColor
                        
                        node.zPosition = 4
                        // to increase or decrease size of latter
                        
                        node.setScale(1)
                        node.strokeColor = fillingColor
                        
                        node.position = CGPoint(x: 0 ,y: 0)
                        
                        
                        self.addChild(node)
                        //new-node2-pathofletter
                        //var node2 = SKShapeNode.init(path: pathOfletter[Index])
                        
                        // node2.path = pathOfletter[Index]
                        //node2.setScale(4)
                        // self.addChild(node2)
                        explosion(pos: (pathOfletter[Index].currentPoint))
                        // init tha path will be used for drawing
                        pathToDraw =  CGMutablePath()
                        myLine = SKShapeNode(path:pathToDraw!)
                        myLine?.path = pathToDraw
                        
                        ///nnn
                        // myLine?.setScale(4)
                        FLetter.append(node)
                        IN = false
                        Index+=1
                        Hand?.run( actionMoveDone! )
                        
                        
                    }
                    
                    if Index==partOfletter.count{
                        stopSound()
                        self.isUserInteractionEnabled = false
                        if (UIDevice.current.userInterfaceIdiom == .phone){
                            var phoneGO = SKScene(fileNamed: "GameOver") as! GameOver
                            phoneGO.setScore(sc: score)
                            phoneGO.setId(Gid:GId , letter : FLetter)
                            //GO.size = (view?.bounds.size)!
                            phoneGO.scaleMode = .aspectFill
                            self.view?.presentScene(phoneGO)
                            GTimer.invalidate()
                        }else if (UIDevice.current.userInterfaceIdiom == .pad){
                            var padGO = SKScene(fileNamed: "GameOverPad") as! GameOver
                            padGO.setScore(sc: score)
                            padGO.setId(Gid:GId , letter : FLetter)
                            //GO.size = (view?.bounds.size)!
                            padGO.scaleMode = .aspectFill
                            self.view?.presentScene(padGO)
                            GTimer.invalidate()
                        }
                    }}
                
                
                
                
            }}
            
            
        else {
            stopSound()
            self.isUserInteractionEnabled = false
            if (UIDevice.current.userInterfaceIdiom == .phone){
                var phoneGO = SKScene(fileNamed: "GameOver") as! GameOver
                phoneGO.setScore(sc: score)
                phoneGO.setId(Gid:GId , letter : FLetter)
                // GO.size = (view?.bounds.size)!
                phoneGO.scaleMode = .aspectFill
                self.view?.presentScene(phoneGO)
                GTimer.invalidate()
            }else if (UIDevice.current.userInterfaceIdiom == .pad){
                var padGO = SKScene(fileNamed: "GameOverPad") as! GameOver
                padGO.setScore(sc: score)
                padGO.setId(Gid:GId , letter : FLetter)
                // GO.size = (view?.bounds.size)!
                padGO.scaleMode = .aspectFill
                self.view?.presentScene(padGO)
                GTimer.invalidate()
            }
            
        }
        
    }
    func touchMoved(toPoint pos : CGPoint) {
        /// for rectangle
        if IN {
            if partOfletter[Index].contains(pos){
                
                
                
                
                if let p = self.myLine?.copy() as! SKShapeNode? {
                    pathToDraw?.move(to: StartPoint!)
                    pathToDraw?.addLine(to: pos)
                    p.path = pathToDraw
                    p.strokeColor = fillingColor
                    p.lineCap = CGLineCap.round
                    p.glowWidth = 1
                    p.lineWidth = 20
                    p.zPosition = 3
                    p.setScale(1)
                    self.addChild(p)
                    StartPoint = pos }}
            
            // if path reach to the end of rectangle
            var end = endOfletter[Index]
            if end.contains(pos)
            {
                
                
                var node = SKShapeNode.init(path: partOfletter[Index])
                node.path = partOfletter[Index]
                node.lineCap = .round
                node.fillColor = fillingColor
                node.name = nameOfColor
                node.zPosition = 4
                // to increase or decrease size of latter
                node.setScale(1)
                node.strokeColor = fillingColor
                
                node.position = CGPoint(x: 0 ,y: 0)
                
                self.addChild(node)
                
                explosion(pos: (pathOfletter[Index].currentPoint))
                // init tha path will be used for drawing
                pathToDraw =  CGMutablePath()
                myLine = SKShapeNode(path:pathToDraw!)
                myLine?.path = pathToDraw
                ///nnn
                // myLine?.setScale(4)
                FLetter.append(node)
                IN = false
                Index+=1
                Hand?.run( actionMoveDone! )
                
                
            }
            
            if Index==partOfletter.count{
                self.isUserInteractionEnabled = false
                if (UIDevice.current.userInterfaceIdiom == .phone){
                    var phoneGO = SKScene(fileNamed: "GameOver") as! GameOver
                    
                    phoneGO.setScore(sc: score)
                    phoneGO.setId(Gid:GId , letter : FLetter)
                    // GO.size = (view?.bounds.size)!
                    phoneGO.scaleMode = .aspectFill
                    self.view?.presentScene(phoneGO)
                    GTimer.invalidate()
                    stopSound()
                } else  if (UIDevice.current.userInterfaceIdiom == .pad){
                    var padGO = SKScene(fileNamed: "GameOverPad") as! GameOver
                    
                    padGO.setScore(sc: score)
                    padGO.setId(Gid:GId , letter : FLetter)
                    // GO.size = (view?.bounds.size)!
                    padGO.scaleMode = .aspectFill
                    self.view?.presentScene(padGO)
                    GTimer.invalidate()
                    stopSound()
                }
            }}
        
        
        
        
    }
    
    
    
    
    func addHand() {
        /// initialilize hand node
        Hand = SKSpriteNode(imageNamed: "n-dot-1")
        //Hand?.size = CGSize.init(width: 35, height: 55)
        Hand?.zPosition = 2
        // action remove node from parent so we can repeat it
        actionMoveDone = SKAction.removeFromParent()
        self.addChild(Hand!)
        // check that user is still drawing
        if partOfletter.count > Index {
            var pathHand = pathOfletter[Index]
            let ActionFollow = SKAction.follow(pathHand, duration: 3)
            Hand?.run(SKAction.sequence ([ActionFollow , actionMoveDone! ]))
        }
            
            // if user done from drawing character
        else {Hand?.run( actionMoveDone! )}
        
    }
    
    
    func addHand2() {
        /// initialilize hand node
        
        
        newHand = SKSpriteNode(imageNamed: "n-app-hand-1")
        newHand?.zPosition = 2
        // action remove node from parent so we can repeat it
        actionMoveDone = SKAction.removeFromParent()
        self.addChild(newHand!)
        // check that user is still drawing
        if partOfletter.count > Index {
            var pathHand = pathOfletter[Index]
            let ActionFollow = SKAction.follow(pathHand, duration: 3)
            
            newHand?.run(SKAction.sequence ([ActionFollow , actionMoveDone! ]))
        }
            
            // if user done from drawing character
        else {newHand?.run( actionMoveDone! )}
        
    }
    
    
    
    func timerS(){
        seconds-=1
        if seconds == 40
        { score-=1
            scoreLabel?.text = String(score)
            var st = self.childNode(withName: "star1") as! SKSpriteNode
            st.run(SKAction.fadeAlpha(to: 0.3, duration: 1))
        }
        if seconds == 20
        { score-=1
            scoreLabel?.text = String(score)
            var st = self.childNode(withName: "star2") as! SKSpriteNode
            st.run(SKAction.fadeAlpha(to: 0.3, duration: 1))
        }
        if seconds == 0
        { score=0
            stopSound()
            var st = self.childNode(withName: "star3") as! SKSpriteNode
            st.run(SKAction.fadeAlpha(to: 0.3, duration: 1))
            
            self.isUserInteractionEnabled = false
            if (UIDevice.current.userInterfaceIdiom == .phone){
                var phoneGO = SKScene(fileNamed: "GameOver") as! GameOver
                phoneGO.setScore(sc: score)
                phoneGO.setId(Gid:GId, letter:FLetter)
                // GO.size = (view?.bounds.size)!
                phoneGO.scaleMode = .aspectFill
                self.view?.presentScene(phoneGO)
                GTimer.invalidate()}
            else if (UIDevice.current.userInterfaceIdiom == .pad){
                var padGO = SKScene(fileNamed: "GameOverPad") as! GameOver
                padGO.setScore(sc: score)
                padGO.setId(Gid:GId, letter:FLetter)
                // GO.size = (view?.bounds.size)!
                padGO.scaleMode = .aspectFill
                self.view?.presentScene(padGO)
                GTimer.invalidate()
            }
        }
        
        TimeLabel?.text =  String(seconds)
        
        
    }
    
    // Creates an animated countdown timer
    func countdown(circle:SKShapeNode, steps:Int, duration:TimeInterval) {
        let radius = circle.path!.boundingBox.width/2
        
        let timeInterval = duration/TimeInterval(steps)
        let incr = 1 / CGFloat(steps)
        var percent = CGFloat(3)
        
        let animate = SKAction.run({
            percent -= incr
            circle.path = self.circleM(radius: radius, percent:percent)
            
        })
        let wait = SKAction.wait(forDuration: timeInterval)
        let action = SKAction.sequence([wait, animate])
        run(SKAction.repeat(SKAction.repeat(action,count:steps), count: 3))
    }
    
    // Creates a CGPath in the shape of a pie with slices missing
    func circleM(radius:CGFloat, percent:CGFloat) -> CGPath {
        var start:CGFloat = 0
        var end = CGFloat(M_PI*2) * percent
        let center =  circle?.position
        var p = CGMutablePath()
        p.move(to: center!)
        p.addArc(center: center!, radius: radius, startAngle: start, endAngle: end, clockwise: true)
        p.addLine(to: center!)
        
        return p
    }
    /// add these 2 methods
    override func update(_ currentTime: TimeInterval) {
        
        
        if lastTime-seconds > 10
        {
            if once<1
            {
                /// run the hand
                run(SKAction.repeat(
                    SKAction.sequence([
                        SKAction.run(addHand2),
                        SKAction.wait(forDuration: 3.0)
                        ]),count: 2
                ))
                once+=1
            }
        }
        else
        {
            newHand?.run(actionMoveDone!)    }
        
        
        
        
    }
    
    
    
}



