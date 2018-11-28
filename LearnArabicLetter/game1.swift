//
//  game1.swift
//  LearnArabicLetter
//
//  Created by بدور on ٢٢‏/٧‏/٢٠١٧.
//  Copyright © ٢٠١٧ بدور. All rights reserved.
//

import SpriteKit
import GameplayKit
import GoogleMobileAds
import AVFoundation

class game1: SKScene {
    var RandomPos : [SKSpriteNode] = []
    var num = 1
    var frouitFinshed : [Int] = []
    var friutName = ""
    var seconds = 40
    var TimeLabel : SKLabelNode?
    var  GTimer = Timer()
    var circle : SKShapeNode?
    var sun: SKSpriteNode?
    var frouits : [String] = []
    var LRandom: [UInt32] = []
    var alphaWnidow : SKNode?
    var homeBtn : SKNode?
    var NextBtn : SKNode?
    var theBasket : SKNode?
    
    var bgMusic: AVAudioPlayer?

    func degToRad(_ degree: Double) -> CGFloat {
        return CGFloat(degree / 180.0 * M_PI)
    }
    
    
    override func didMove(to view: SKView) {
        
        
       // do{bgMusic = try AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "singing-away", ofType: "mp3")!) as URL)}
            
       // catch {print ("Invalid")}
       // playSound()
        
        //////
        let userDef = UserDefaults.standard
        var arrayLL = userDef.array(forKey: "levels") as! [Int]
        startNewGame()
        ///////
        
        
        
        //PUT SINGING AWAY MUSIC
        
        
        //clock
        GTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerS),
                                      userInfo: nil, repeats: true)
        TimeLabel  = self.childNode(withName: "Seconds") as! SKLabelNode?
        TimeLabel?.text =  String(seconds)
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
        //----clock
        
        //sun-node
        sun = self.childNode(withName: "sun") as! SKSpriteNode
        let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(-3.0), duration: 0.7),
                                          SKAction.rotate(byAngle: 0.0, duration: 0.4),
                                          SKAction.rotate(byAngle: degToRad(3.0), duration: 0.7)])
        sun?.run(SKAction.repeatForever(sequence))
        //-----sun-node
        //////////
        
         if (UIDevice.current.userInterfaceIdiom == .phone){
        alphaWnidow  = self.childNode(withName: "alphaBG")
         }else  if (UIDevice.current.userInterfaceIdiom == .pad){
            alphaWnidow  = self.childNode(withName: "alphaBGPad")
        }
        homeBtn  = self.childNode(withName: "home")
        NextBtn = self.childNode(withName: "next")
        theBasket = self.childNode(withName: "theBasket")
        ////1   choose friut
        
        if (num==1)
        {
            friutName = frouits[0]
        }
        if (num==2)
        {
            friutName = frouits[1]
        }
        if (num==3)
        {
            friutName = frouits[2]
        }
        if (num==4)
        {
            friutName = frouits[3]
        }
        if (num==5)
        {
            friutName = frouits[4]
        }
        
        ////////  basket
        
        if (frouitFinshed.count>0){
            for f in 0 ..<  frouitFinshed.count {
                var b = self.childNode(withName: "basket"+String(f+1)) as! SKSpriteNode
                b.texture = SKTexture(imageNamed:frouits[frouitFinshed[f]])
            }
            
        }
        
        ///////2
        var r1 = arc4random_uniform(10)+1
        var r2 = arc4random_uniform(10)+1
        while r2==r1 {
            r2 = arc4random_uniform(10)+1
        }
        var r3 = arc4random_uniform(10)+1
        while r3==r1 || r3==r2{
            r3 = arc4random_uniform(10)+1
        }
        
        //////3
        RandomPos.append(self.childNode(withName: "fruitPos"+String(r1)) as! SKSpriteNode!)
        RandomPos.append(self.childNode(withName: "fruitPos"+String(r2)) as! SKSpriteNode!)
        RandomPos.append(self.childNode(withName: "fruitPos"+String(r3)) as! SKSpriteNode!)
        
        ///////4  a.get 3 random letters
        var Lr1 = arc4random_uniform(UInt32(arrayLL.count-1))+1
        var Lr2 = arc4random_uniform(UInt32(arrayLL.count-1))+1
        while Lr2==Lr1 {
            Lr2 = arc4random_uniform(UInt32(arrayLL.count-1))+1
        }
        var Lr3 = arc4random_uniform(UInt32(arrayLL.count-1))+1
        while Lr3==Lr1 || Lr3==Lr2{
            Lr3 = arc4random_uniform(UInt32(arrayLL.count-1))+1
        }
        
        LRandom = [Lr1,Lr2,Lr3]
        
        //// 4 play sound of letter in first index (asked letter)
        var soundLetter = SKAction.playSoundFileNamed(String(Int(LRandom[0]))+".m4a", waitForCompletion: true)
        run(soundLetter)
        
        ///////// 5 put 3 letter and apple in pos
        
        
        if (UIDevice.current.userInterfaceIdiom == .pad){
        for m in 0 ... 2
        {
            var L = LetterDrawingiPad()
            var partOfletter =   L.setLetter(id: Int(LRandom[m])).prt
            
            var size = RandomPos[m].size
            RandomPos[m].texture = SKTexture(imageNamed:friutName)
            RandomPos[m].zPosition = 15
            RandomPos[m].size = size
            
            
            for i in 0 ..< partOfletter.count
            {
                var node = SKShapeNode.init(path: partOfletter[i])
                node.path =  partOfletter[i]
                node.fillColor = UIColor(red: 0.933, green: 0.937, blue: 0.91, alpha: 1.0)
                node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                node.lineWidth = 3
                node.setScale(0.12)
                node.zPosition = 2
                
                
                node.position.x = -80
                node.position.y = -130
                node.isUserInteractionEnabled = false
                
                RandomPos[m].addChild(node)
                
            }
            
        }
    }else if
        (UIDevice.current.userInterfaceIdiom == .phone)
        {
            for m in 0 ... 2
            {
                var L = LetterDrawing()
                var partOfletter =   L.setLetter(id: Int(LRandom[m])).prt
                
                var size = RandomPos[m].size
                RandomPos[m].texture = SKTexture(imageNamed:friutName)
                RandomPos[m].zPosition = 15
                RandomPos[m].size = size
                
                
                for i in 0 ..< partOfletter.count
                {
                    var node = SKShapeNode.init(path: partOfletter[i])
                    node.path =  partOfletter[i]
                    node.fillColor = UIColor(red: 0.933, green: 0.937, blue: 0.91, alpha: 1.0)
                    node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                    node.lineWidth = 3
                    node.setScale(0.12)
                    node.zPosition = 2
                    
                    
                    node.position.x = -80
                    node.position.y = -130
                    node.isUserInteractionEnabled = false
                    
                    RandomPos[m].addChild(node)
                    
                }
                
            }
        }
        
        
        
        
    }
    
   
    func playSound(){
        bgMusic?.play()
    }
    
    func pauseSound(){
        bgMusic?.pause()}
    
    func stopSound(){
        bgMusic?.stop()}
    
     var gameOver = false
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches {
            var loc =  t.location(in: self)
           
            if (gameOver){
                if (NextBtn?.contains(loc))!
                {
                   // stopSound()
                    var userDef = UserDefaults.standard
                    let isfull = userDef.bool(forKey: "fullVersion")
                    if !(isfull){
                        let currentViewController:UIViewController=UIApplication.shared.keyWindow!.rootViewController!
                        if self.interstitial.isReady {
                            self.interstitial.present(fromRootViewController: currentViewController)
                        } else {
                            print("Ad wasn't ready")
                        }
                    }
                    
                    var arryy = userDef.array(forKey: "Games") as! [Int]
                    arryy.append(self.frouitType+1)
                    userDef.set(arryy, forKey: "Games")
                    userDef.synchronize()
                
                if (UIDevice.current.userInterfaceIdiom == .phone){
                var phoneScene = SKScene(fileNamed: "Game"+String(self.frouitType+1)+"Scene") as! game2
                phoneScene.BGType(BGT: frouitType+1)
                //   mainScene?.size = (self.view?.bounds.size)!
                phoneScene.scaleMode = .aspectFill
                self.view?.presentScene(phoneScene)
                
                }else if(UIDevice.current.userInterfaceIdiom == .pad){
                    
                    var padScene = SKScene(fileNamed: "Game"+String(self.frouitType+1)+"ScenePad") as! game2
                    padScene.BGType(BGT: frouitType+1)
                    //   mainScene?.size = (self.view?.bounds.size)!
                    padScene.scaleMode = .aspectFill
                    self.view?.presentScene(padScene)
                }
                
                }}

            if (homeBtn?.contains(loc))!
            {
                //stopSound()
                var userDef = UserDefaults.standard
                let isfull = userDef.bool(forKey: "fullVersion")
                if !(isfull){
                    let currentViewController:UIViewController=UIApplication.shared.keyWindow!.rootViewController!
                    if self.interstitial.isReady {
                        self.interstitial.present(fromRootViewController: currentViewController)
                    } else {
                        print("Ad wasn't ready")
                    }
                }
                if (self.gameOver){
                    var arryy = userDef.array(forKey: "Games") as! [Int]
                    arryy.append(self.frouitType+1)
                    userDef.set(arryy, forKey: "Games")
                    userDef.synchronize()
                }
                if (UIDevice.current.userInterfaceIdiom == .phone){
                var phoneScene = SKScene(fileNamed: "GameScene")
                //   mainScene?.size = (self.view?.bounds.size)!
                phoneScene?.scaleMode = .aspectFill
                self.view?.presentScene(phoneScene)
                    
                }else if (UIDevice.current.userInterfaceIdiom == .pad){
                    var padScene = SKScene(fileNamed: "GameScenePad")
                    //   mainScene?.size = (self.view?.bounds.size)!
                    padScene?.scaleMode = .aspectFill
                    self.view?.presentScene(padScene)
                }
            }

            /////6 if user click on worong letter run shake  if right ansswer update page
            /// right node =  RandomPos[0]
            
            
            if(RandomPos[0].contains(loc)){
                if (num==5)
                {
                    
                    GTimer.invalidate()
                    frouitFinshed.append(num-1)
                    gameOver = true
                    
                    var PalySound = SKAction.playSoundFileNamed("excelant.m4a", waitForCompletion: true)
                    run(PalySound)
                    
                }
                else {
                    
                    GTimer.invalidate()
                    
                     if (UIDevice.current.userInterfaceIdiom == .phone){
                    var phoneNextLevel = SKScene(fileNamed: "Game"+String(frouitType)+"Scene") as! game1
                    phoneNextLevel.setFriutNumber(number: self.num+1)
                    
                    frouitFinshed.append(num-1)
                    phoneNextLevel.finish(finshed: frouitFinshed )
                    phoneNextLevel.fruit(frouitType: frouitType)
                    phoneNextLevel.scaleMode = .aspectFill
                    self.view?.presentScene(phoneNextLevel)
                    }else if (UIDevice.current.userInterfaceIdiom == .pad){
                        var padNextLevel = SKScene(fileNamed: "Game"+String(frouitType)+"ScenePad") as! game1
                        padNextLevel.setFriutNumber(number: self.num+1)
                        
                        frouitFinshed.append(num-1)
                        padNextLevel.finish(finshed: frouitFinshed )
                        padNextLevel.fruit(frouitType: frouitType)
                        padNextLevel.scaleMode = .aspectFill
                        self.view?.presentScene(padNextLevel)
                    }
                    
                    
                }
            }
            
            
            
            if(RandomPos[1].contains(loc)){
                let moveActionDown = SKAction.moveTo(y: -1000.0, duration: 3)
                RandomPos[1].run(moveActionDown)
                
                
            }
            if(RandomPos[2].contains(loc)){
                
                let moveActionDown = SKAction.moveTo(y: -1000.0, duration: 3)
                RandomPos[2].run(moveActionDown)
                
            }}}
    
    
    
    
    
    var isFinished = false
    func setFriutNumber (number : Int )  {
        num = number
    }
    
    func finish(finshed : [Int]){
        frouitFinshed = finshed
    }
    var   frouitType = 0
    func fruit(frouitType : Int){
        
        self.frouitType = frouitType
        
        if (frouitType == 1){
            frouits = ["apple","orange","guava","strawberry","grapes"]
        }
        if (frouitType == 4){
            frouits = ["tomato","pumpkin","eggplant","cromb","onion"]
        }
        if (frouitType == 7){
            frouits = ["peach","pear","lemon-1-3","kiwi","bananas"]
        }
        
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches{
            
            var loc = t.location(in: self)
            
            
            if (homeBtn?.contains(loc))! {
                
                var no = homeBtn?.copy() as! SKSpriteNode
                no.zPosition = 5
                
                self.addChild(no)
                
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
            
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches {
            var loc =  t.location(in: self)
        if (homeBtn?.contains(loc))! {
            
            var no = homeBtn?.copy() as! SKSpriteNode
            no.zPosition = 5
            
            self.addChild(no)
            
            no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
        }
        }
    }
    
    func timerS(){
        seconds-=1
        
        if seconds == 0
        {
            
          //  self.isUserInteractionEnabled = false
            if (num==5)
            {
                
                GTimer.invalidate()
                
                gameOver = true
            }
            else{
                   if (UIDevice.current.userInterfaceIdiom == .phone){
                var phonegame1c = SKScene(fileNamed: "Game"+String(frouitType)+"Scene") as! game1
                phonegame1c.setFriutNumber(number: self.num+1)
                phonegame1c.finish(finshed: frouitFinshed )
                phonegame1c.fruit(frouitType: frouitType)
                phonegame1c.scaleMode = .aspectFill
                self.view?.presentScene(phonegame1c)
                }else  if (UIDevice.current.userInterfaceIdiom == .pad){
                    var padgame1c = SKScene(fileNamed: "Game"+String(frouitType)+"ScenePad") as! game1
                    padgame1c.setFriutNumber(number: self.num+1)
                    padgame1c.finish(finshed: frouitFinshed )
                    padgame1c.fruit(frouitType: frouitType)
                    padgame1c.scaleMode = .aspectFill
                    self.view?.presentScene(padgame1c)
                }
                GTimer.invalidate()
                    
            }
            
        }
        
        
        
        
        TimeLabel?.text =  String(seconds) }
    
    
    
    
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
        self.run(SKAction.repeat(SKAction.repeat(action,count:steps), count: 2))
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
    
    fileprivate func startNewGame() {
        createAndLoadInterstitial()}
    
    fileprivate func createAndLoadInterstitial() {
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-6829827223853004/3581186162")
        
        
        let request = GADRequest()
        interstitial.load(request)
    }
    /// The interstitial ad.
    var interstitial: GADInterstitial!
    
    override func update(_ currentTime: TimeInterval) {
        
        if (gameOver)
        {
            
            alphaWnidow?.run(SKAction.fadeAlpha(to: 1,duration: 1))
            
            
            homeBtn?.position.y = (NextBtn?.position.y)!
            homeBtn?.position.x = (NextBtn?.position.x)! + (NextBtn?.frame.size.width)!
            homeBtn?.zPosition = 8
            homeBtn?.run(SKAction.fadeIn(withDuration: 1))
            NextBtn?.zPosition = 8
            NextBtn?.run(SKAction.fadeIn(withDuration: 1))
            
            //the fruit in the tree disappear
            
            for m in 0 ... 2
            {
                var L = LetterDrawingiPad()
                var partOfletter =   L.setLetter(id: Int(LRandom[m])).prt
                
                var size = RandomPos[m].size
                RandomPos[m].texture = SKTexture(imageNamed:friutName)
                RandomPos[m].zPosition = 15
                RandomPos[m].size = size
                RandomPos[m].alpha = 0
                
                for i in 0 ..< partOfletter.count
                {
                    var node = SKShapeNode.init(path: partOfletter[i])
                    node.path =  partOfletter[i]
                    node.fillColor = UIColor(red: 0.933, green: 0.937, blue: 0.91, alpha: 1.0)
                    node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                    node.lineWidth = 3
                    node.setScale(0.12)
                    node.zPosition = 1
                    node.alpha=0
                    
                    node.position.x = -80
                    node.position.y = -130
                    node.isUserInteractionEnabled = false
                    
                    RandomPos[m].addChild(node)
                    
                }
                
            }
            
            
            
            
            //the fruit in the basket disappear
            if (frouitFinshed.count>0){
                for f in 0 ..<  frouitFinshed.count {
                    var b = self.childNode(withName: "basket"+String(f+1)) as! SKSpriteNode
                    b.zPosition = 60
                    b.texture = SKTexture(imageNamed:frouits[frouitFinshed[f]])
                    b.alpha = 1
                    b.run(SKAction.fadeIn(withDuration: 1))
                    
                }
            }
            theBasket?.zPosition = 7
           theBasket?.run(SKAction.fadeIn(withDuration: 1))
            
            
            
            
        }
        
        
    }
}
