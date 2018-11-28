//
//  game1.swift
//  LearnArabicLetter
//
//  Created by بدور on ٢٢‏/٧‏/٢٠١٧.
//  Copyright © ٢٠١٧ بدور. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameOne2: SKScene {
    var RandomPos : [SKSpriteNode] = []
    var num = 1
    var frouitFinshed : [Int] = []
    var friutName = ""
    var seconds = 40
    var TimeLabel : SKLabelNode?
    var  GTimer = Timer()
    var circle : SKShapeNode?
    var sun: SKSpriteNode?
    
    func degToRad(_ degree: Double) -> CGFloat {
        return CGFloat(degree / 180.0 * M_PI)
    }
    
    
    override func didMove(to view: SKView) {
        
        GTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerS), userInfo: nil, repeats: true)
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
        
        
        sun = self.childNode(withName: "sun") as! SKSpriteNode
        let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(-3.0), duration: 0.7),
                                          SKAction.rotate(byAngle: 0.0, duration: 0.4),
                                          SKAction.rotate(byAngle: degToRad(3.0), duration: 0.7)])
        sun?.run(SKAction.repeatForever(sequence))
        
        
        ////1   choose friut
        var frouits = ["apple","orange","guava","strawberry","grapes"]
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
        var Lr1 = arc4random_uniform(26)+1
        var Lr2 = arc4random_uniform(26)+1
        while Lr2==Lr1 {
            Lr2 = arc4random_uniform(26)+1
        }
        var Lr3 = arc4random_uniform(26)+1
        while Lr3==Lr1 || Lr3==Lr2{
            Lr3 = arc4random_uniform(26)+1
        }
        
        var LRandom = [Lr1,Lr2,Lr3]
        
        //// 4 play sound of letter in first index (asked letter)
        var soundLetter = SKAction.playSoundFileNamed(String(Int(LRandom[0]))+".m4a", waitForCompletion: true)
        run(soundLetter)
        
        ///////// 5 but 3 letter and apple in pos
        
        
        
        for m in 0 ... 2
        {
            var L = LetterDrawingiPad()
            var partOfletter =   L.setLetter(id: Int(LRandom[m])).prt
            
            var size = RandomPos[m].size
            RandomPos[m].texture = SKTexture(imageNamed:friutName)
            RandomPos[m].zPosition = 3
            RandomPos[m].size = size
            
            
            for i in 0 ..< partOfletter.count
            {
                var node = SKShapeNode.init(path: partOfletter[i])
                node.path =  partOfletter[i]
                node.fillColor = UIColor(red: 0.933, green: 0.937, blue: 0.91, alpha: 1.0)
                node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                node.lineWidth = 3
                node.setScale(0.12)
                node.zPosition = 1
                
                
                node.position.x = -80
                node.position.y = -130
                node.isUserInteractionEnabled = false
                
                RandomPos[m].addChild(node)
                
            }
            
        }
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches {
            var loc =  t.location(in: self)
            
            /////6 if user click on worong letter run shake  if right ansswer update page
            /// right node =  RandomPos[0]
            
            if(RandomPos[0].contains(loc)){
                if (num==5)
                {
                    GTimer.invalidate()
                    var GameOver1 = SKScene(fileNamed: "Game1OverScene")
                    GameOver1?.scaleMode = .aspectFill
                    self.view?.presentScene(GameOver1)
                }
                else {
                    GTimer.invalidate()
                    var NextLevel = SKScene(fileNamed: "Game1Scene") as! game1
                    NextLevel.setFriutNumber(number: self.num+1)
                    
                    frouitFinshed.append(num-1)
                    NextLevel.finish(finshed: frouitFinshed )
                    NextLevel.scaleMode = .aspectFill
                    self.view?.presentScene(NextLevel)
                    
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
    
    
    func timerS(){
        seconds-=1
        
        if seconds == 0
        {
            
            self.isUserInteractionEnabled = false
            if (num==5)
            {
                GTimer.invalidate()
                var GameOver1 = SKScene(fileNamed: "Game1OverScene")
                GameOver1?.scaleMode = .aspectFill
                self.view?.presentScene(GameOver1)
            }
            else{
                var game1c = SKScene(fileNamed: "Game1Scene") as! game1
                game1c.setFriutNumber(number: self.num+1)
                game1c.finish(finshed: frouitFinshed )
                game1c.scaleMode = .aspectFill
                self.view?.presentScene(game1c)
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
    
    
    
}
