//
//  game3.swift
//  LearnArabicLetter
//
//  Created by بدور on ٢٩‏/٧‏/٢٠١٧.
//  Copyright © ٢٠١٧ بدور. All rights reserved.
//

import SpriteKit
import GameplayKit
import GoogleMobileAds
import AVFoundation

class game3: SKScene {
    
    var bgMusic: AVAudioPlayer?
    var nodeHatArr : [SKNode]=[]
    var nodeHat1 : SKNode?
    var  nodeHat2 : SKNode?
    var nodeHat3 : SKNode?

    var pos1 : CGPoint?
    var pos2 : CGPoint?
    var pos3 : CGPoint?
    var DancigSnowMan1 : SKSpriteNode?
    var DancigSnowMan2 : SKSpriteNode?
    var DancigSnowMan3 : SKSpriteNode?
var Sr1 = 0
    var Sr2 = 0
    var Sr3 = 0
    var alphaWnidow : SKNode?
    var frameWindow : SKNode?
    var homeBtn : SKNode?
    //var homesize : SKSpriteNode?
    var label1Window : SKNode?
    var label2Window : SKNode?
    
    var animation1 : SKAction?
    
    func degToRad(_ degree: Double) -> CGFloat {
        return CGFloat(degree / 180.0 * M_PI)
    }
    
    override func didMove(to view: SKView) {
        
        do{bgMusic = try AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "mr-jelly", ofType: "mp3")!) as URL)
            bgMusic?.numberOfLoops = -1
        }
            
        catch {print ("Invalid")}
        playSound()
        //PUT MR JELLY MUSIC
    startNewGame()
        if (UIDevice.current.userInterfaceIdiom == .phone){
            alphaWnidow  = self.childNode(withName: "alphaBG")}
        else if (UIDevice.current.userInterfaceIdiom == .pad){
            alphaWnidow  = self.childNode(withName: "alphaBGPad")
        }
       // Label = self.childNode(withName: "LabelNode") as! SKLabelNode
        frameWindow = self.childNode(withName: "frame")
        
        homeBtn  = self.childNode(withName: "home")
        
   //what is sn3
      /*  if (sn3){        // Add 2 frames
            let f0 = SKTexture.init(imageNamed: "snowman1_1")
            let f1 = SKTexture.init(imageNamed: "snowman1_2")
            let frames: [SKTexture] = [f0, f1]
            
            // Load the first frame as initialization
            
            // Change the frame per 0.2 sec
            animation1 = SKAction.animate(with: frames, timePerFrame: 0.2)
            DancigSnowMan1?.run(SKAction.repeatForever(animation1!))
            
        }*/
        
        /// make couples letter
        let coubleArr = [[2,3],[5,6],[8,9],[10,11],[12,13],[14,15],[16,17],[18,19]]
    ///1 choose 3 random letter  from 8 couples
        
        let userDef = UserDefaults.standard
        var arrayLL = userDef.array(forKey: "levels") as! [Int]
        var maxR = 8
        if(arrayLL.count==10) {
        maxR = 3
        }
            
            
        var r1 = arc4random_uniform(UInt32(maxR))
        var r2 = arc4random_uniform(UInt32(maxR))
        while r2==r1 {
            r2 = arc4random_uniform(UInt32(maxR))
        }
        var r3 = arc4random_uniform(UInt32(maxR))
        while r3==r1 || r3==r2{
            r3 = arc4random_uniform(UInt32(maxR))
        }
        var randomarr = [r1,r2,r3]
   //3 put these letter in hat and similarity in snow mans randomly
        //////randrom snow man
      
         Sr1 = Int(arc4random_uniform(3))
         Sr2 = Int(arc4random_uniform(3))
        while Sr2==Sr1 {
            Sr2 = Int(arc4random_uniform(3))
        }
         Sr3 = Int(arc4random_uniform(3))
        while Sr3==Sr1 || Sr3==Sr2{
            Sr3 = Int(arc4random_uniform(3))
        }
        
        var nodeSM1 = self.childNode(withName: "letter"+String(Sr1+1))
        var nodeSM2 = self.childNode(withName: "letter"+String(Sr2+1))
        var nodeSM3 = self.childNode(withName: "letter"+String(Sr3+1))
        
        var nodeSMArr = [nodeSM1,nodeSM2,nodeSM3 ]
    //////// random hat
        var Hr1 = arc4random_uniform(3)
        var Hr2 = arc4random_uniform(3)
        while Hr2==Hr1 {
            Hr2 = arc4random_uniform(3)
        }
        var Hr3 = arc4random_uniform(3)
        while Hr3==Hr1 || Hr3==Hr2{
            Hr3 = arc4random_uniform(3)
        }
      
        
        
        nodeHat1 = self.childNode(withName: "hat"+String(Hr1+1))
        nodeHat2 = self.childNode(withName: "hat"+String(Hr2+1))
        nodeHat3 = self.childNode(withName: "hat"+String(Hr3+1))
        
        pos1 = nodeHat1?.position
        pos2 = nodeHat2?.position
        pos3 = nodeHat3?.position

         nodeHatArr = [nodeHat1!,nodeHat2!,nodeHat3!]
        let skView = self.view as! SKView
       
        if (UIDevice.current.userInterfaceIdiom == .pad){
        /// nodesm1 will take coubleArr[r1][0]   , nodeHat1 will take  coubleArr[r1][1]
        for m in 0 ... 2
        {
            var L = LetterDrawingiPad()
            var partOfletter =   L.setLetter(id: Int(coubleArr[Int(randomarr[m])][0])).prt
            
            
            //letter position in (the letter node)
            
            for i in 0 ..< partOfletter.count
            {
                var node = SKShapeNode.init(path: partOfletter[i])
                node.path =  partOfletter[i]
                node.fillColor = UIColor(red: 0.863, green: 0.863, blue: 0.863, alpha: 1.0)
                node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                node.lineWidth = 40
                 node.setScale(0.1)
                //  node.zPosition = 1
                
                
                node.position.x = -90
                node.position.y = -80
                node.isUserInteractionEnabled = false
                
                nodeSMArr[m]?.addChild(node)
                
            }
            
        }
        /////////
        for m in 0 ... 2
        {
            var L = LetterDrawingiPad()
            var partOfletter =   L.setLetter(id: Int(coubleArr[Int(randomarr[m])][1])).prt
            
            
            //letter in the ballons, feathers, and hats
            for i in 0 ..< partOfletter.count
            {
                var node = SKShapeNode.init(path: partOfletter[i])
                node.path =  partOfletter[i]
                node.fillColor = UIColor(red: 0.863, green: 0.863, blue: 0.863, alpha: 1.0)
                node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                node.lineWidth = 30
                node.setScale(0.1)
                node.zPosition = 1
                
                
                node.position.x = -60
                node.position.y = -40
                node.isUserInteractionEnabled = false
                
                nodeHatArr[m].addChild(node)
                
            }
            
            let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(-6.5), duration: 0.3),
                                              SKAction.rotate(byAngle: 0.0, duration: 0.3),
                                              SKAction.rotate(byAngle: degToRad(6.5), duration: 0.3)])
            nodeHatArr[m].run(SKAction.repeatForever(sequence))
        }
        }else if (UIDevice.current.userInterfaceIdiom == .phone){
            
            for m in 0 ... 2
            {
                var L = LetterDrawing()
                var partOfletter =   L.setLetter(id: Int(coubleArr[Int(randomarr[m])][0])).prt
                
                
                //letter position in (the letter node)
                
                for i in 0 ..< partOfletter.count
                {
                    var node = SKShapeNode.init(path: partOfletter[i])
                    node.path =  partOfletter[i]
                    node.fillColor = UIColor(red: 0.863, green: 0.863, blue: 0.863, alpha: 1.0)
                    node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                    node.lineWidth = 40
                    node.setScale(0.1)
                    //  node.zPosition = 1
                    
                    
                    node.position.x = -90
                    node.position.y = -80
                    node.isUserInteractionEnabled = false
                    
                    nodeSMArr[m]?.addChild(node)
                    
                }
             
            }
            /////////
            for m in 0 ... 2
            {
                var L = LetterDrawing()
                var partOfletter =   L.setLetter(id: Int(coubleArr[Int(randomarr[m])][1])).prt
                
                
                //letter in the ballons, feathers, and hats
                for i in 0 ..< partOfletter.count
                {
                    var node = SKShapeNode.init(path: partOfletter[i])
                    node.path =  partOfletter[i]
                    node.fillColor = UIColor(red: 0.863, green: 0.863, blue: 0.863, alpha: 1.0)
                    node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                    node.lineWidth = 30
                    node.setScale(0.1)
                    node.zPosition = 1
                    
                    
                    node.position.x = -60
                    node.position.y = -20
                    node.isUserInteractionEnabled = false
                    
                    nodeHatArr[m].addChild(node)
                    
                }
                
                let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(-6.5), duration: 0.3),
                                                  SKAction.rotate(byAngle: 0.0, duration: 0.3),
                                                  SKAction.rotate(byAngle: degToRad(6.5), duration: 0.3)])
                nodeHatArr[m].run(SKAction.repeatForever(sequence))
            }
            
        }
            
           /* if(skView.scene?.view == game3(fileNamed: "Game6Scene")){
                for i in 0 ..< partOfletter.count
                {
                    var node = SKShapeNode.init(path: partOfletter[i])
                    node.path =  partOfletter[i]
                    node.fillColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
                    node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                    node.lineWidth = 3
                    node.setScale(0.2)
                    node.zPosition = 1
                    
                    
                    node.position.x = -110
                    node.position.y = 80
                    node.isUserInteractionEnabled = false
                    
                    nodeHatArr[m].addChild(node)
                    
                }
            }
            
        */

        
        
        //4  define right pos of each hat
        
        /// hatPos of sr1  is right pos of hat hr1
        
        posHat1 = self.childNode(withName: "hatPos"+String(Sr1+1))     // hat hr1
        posHat2 = self.childNode(withName: "hatPos"+String(Sr2+1))
        posHat3 = self.childNode(withName: "hatPos"+String(Sr3+1))
        
        
        // 5 moving hat with touch */
        
    }
    
    func playSound(){
        bgMusic?.play()
    }
    
    func pauseSound(){
        bgMusic?.pause()}
    
    func stopSound(){
        bgMusic?.stop()}
    
    var sn3 = false
    var posHat1:SKNode?
    var posHat2:SKNode?
    var posHat3:SKNode?
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
        for t in touches {
            
            var loc =  t.location(in: self)
            
            if (homeBtn?.contains(loc))! {
                
                var no = homeBtn?.copy() as! SKSpriteNode
                no.zPosition = 5
                
                self.addChild(no)
                
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
            
            if (homeBtn?.contains(loc))!
            {
                stopSound()
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
                
                if (UIDevice.current.userInterfaceIdiom == .phone){
                var phoneMainScene = SKScene(fileNamed: "GameScene")
                //   mainScene?.size = (self.view?.bounds.size)!
                phoneMainScene?.scaleMode = .aspectFill
                self.view?.presentScene(phoneMainScene)
                    
                }
                else if (UIDevice.current.userInterfaceIdiom == .pad){
                    var padMainScene = SKScene(fileNamed: "GameScenePad")
                    //   mainScene?.size = (self.view?.bounds.size)!
                    padMainScene?.scaleMode = .aspectFill
                    self.view?.presentScene(padMainScene)

                    
                }
                
            }
            
            
            ///////// game
            if (nodeHat1?.contains(loc))!
            {
                if (posHat1?.contains(loc))!
                {  nodeHat1?.position = (posHat1?.position)!
                    nodeHat1?.isUserInteractionEnabled = false
                    //  self.dance(id: Sr1+1)
                    oneDone = true
                    
                    
                }else
                {
                    nodeHat1?.position = pos1!
                }
                
            }
            if (nodeHat2?.contains(loc))!
            {
                if (posHat2?.contains(loc))!
                {  nodeHat2?.position = (posHat2?.position)!
                    nodeHat2?.isUserInteractionEnabled = false
                    // self.dance(id: Sr2+1)
                    twoDone = true
                    
                    
                }else
                {
                    nodeHat2?.position = pos2!
                }
                
            }
            if (nodeHat3?.contains(loc))!
            {
                if (posHat3?.contains(loc))!
                {  nodeHat3?.position = (posHat3?.position)!
                    nodeHat3?.isUserInteractionEnabled = false
                    // self.dance(id: Sr3+1)
                    threeDone = true
                    
                }else
                {
                    nodeHat3?.position = pos3!
                }
                
            }
          
            
            if (nodeHat1?.contains(loc))!
            {
                nodeHat1?.zPosition = HatLevel.board.rawValue
                nodeHat1?.zPosition = 9
                nodeHat1?.removeFromParent()
                self.addChild(nodeHat1!)
                
                
            }
            
            if (nodeHat2?.contains(loc))!
            {
                nodeHat2?.zPosition = HatLevel.board.rawValue
                nodeHat2?.zPosition = 9
                nodeHat2?.removeFromParent()
                self.addChild(nodeHat2!)
            }
            
            if (nodeHat3?.contains(loc))!
            {
                nodeHat3?.zPosition = HatLevel.board.rawValue
                nodeHat3?.zPosition = 9
                nodeHat3?.removeFromParent()
                self.addChild(nodeHat3!)            }
            
        }}
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        
        for t in touches {
            var loc = t.location(in: self)
            
            
            if (nodeHat1?.contains(loc))!
            {
                
                nodeHat1?.position = loc
                
                
            }
            
            if (nodeHat2?.contains(loc))!
            {
                nodeHat2?.position = loc
                
            }
            
            if (nodeHat3?.contains(loc))!
            {
                nodeHat3?.position = loc
            }
            
        }}
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches {
            var loc = t.location(in: self)
            
            
            if (homeBtn?.contains(loc))! {
                
                var no = homeBtn?.copy() as! SKSpriteNode
                no.zPosition = 5
                
                self.addChild(no)
                
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
            
            if (nodeHat1?.contains(loc))!
            {
                
                nodeHat1?.zPosition = HatLevel.moving.rawValue
                nodeHat1?.zPosition = 9
                
            }
            
            if (nodeHat2?.contains(loc))!
            {
                nodeHat2?.zPosition = HatLevel.moving.rawValue
                nodeHat2?.zPosition = 9
            }
            
            if (nodeHat3?.contains(loc))!
            {
                nodeHat3?.zPosition = HatLevel.moving.rawValue
                nodeHat3?.zPosition = 9
               /* var PalySound = SKAction.playSoundFileNamed("excelant.m4a", waitForCompletion: true)
                run(PalySound)*/
            }
            
        }
        
    }

    func dance(id : Int){
        let f0 = SKTexture.init(imageNamed: "snowman"+String(id)+"_1")
        let f1 = SKTexture.init(imageNamed: "snowman"+String(id)+"_2")
        let frames: [SKTexture] = [f0, f1]
        
        // Load the first frame as initialization
        DancigSnowMan1 = self.childNode(withName:"snowman"+String(id)) as! SKSpriteNode
        
        // Change the frame per 0.2 sec
        animation1 = SKAction.animate(with: frames, timePerFrame: 0.2)
        DancigSnowMan1?.run(SKAction.repeatForever(animation1!))
    }
    var oneDone = false
    var threeDone = false
    var twoDone = false
    override func update(_ currentTime: TimeInterval) {
        
        if (oneDone){
            nodeHat1?.position = (posHat1?.position)!
        }
        if (twoDone){
            nodeHat2?.position = (posHat2?.position)!
        }
        if (threeDone){
            nodeHat3?.position = (posHat3?.position)!
        }
        if (oneDone && twoDone && threeDone){
            
            // gameover
           alphaWnidow?.run(SKAction.sequence([SKAction.wait(forDuration: 0.2),SKAction.fadeAlpha(to: 0.4,duration: 1)]))
            
            frameWindow?.run(SKAction.sequence([SKAction.wait(forDuration: 0.2),SKAction.fadeIn(withDuration: 1)]))
            
            
           // Label?.isHidden = false
            label1Window  = self.childNode(withName: "label1")
            label1Window?.run(SKAction.sequence([SKAction.wait(forDuration: 0.2),SKAction.fadeIn(withDuration: 1)]))
            
            label2Window = self.childNode(withName: "label2")
           label2Window?.run(SKAction.sequence([SKAction.wait(forDuration: 0.2),SKAction.fadeIn(withDuration: 1)]))
           // homeBtn?.removeFromParent();
            
            if (UIDevice.current.userInterfaceIdiom == .phone){
               //  homeBtn?.position = CGPoint(x: self.size.width/2+70, y: self.size.height/2-180)
                var homesize = self.childNode(withName: "home") as! SKSpriteNode
                homesize.size = CGSize(width: 120, height: 120)
                homeBtn?.zPosition = 12
                homesize.position.y = -115
                homesize.position.x = -20
            }
            else if (UIDevice.current.userInterfaceIdiom == .pad){
           // homeBtn?.position = CGPoint(x: self.size.width/2+70, y: self.size.height/2-250)
            var homesize = self.childNode(withName: "home") as! SKSpriteNode
            homesize.run(SKAction.sequence([SKAction.wait(forDuration: 1),SKAction.fadeIn(withDuration: 1)]))
            homesize.position.y = -170
            homesize.position.x = 60
            homesize.zPosition = 12
            homesize.size = CGSize(width: 150, height: 150)
            }
            
            var userDef = UserDefaults.standard
            var arrayML = userDef.array(forKey: "Mainlevels") as! [Int]
            if (number == 3) {
                arrayML.append(2)
            }
            if (number == 6) {
                arrayML.append(3)
            }
            userDef.setValue(arrayML, forKey: "Mainlevels")
            userDef.synchronize()
        }
        
    }
    var  number = 0
    func setNumber(num:Int)
    {
        
        number = num
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
    
    
}



enum HatLevel :CGFloat {
    case board = 2
    case moving = 3
    case enlarged = 4
}
