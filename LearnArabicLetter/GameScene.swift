//  GameScene.swift
//  try
//
//  Created by بدور on ١٥‏/٨‏/٢٠١٧.
//  Copyright © ٢٠١٧ com.bethrah. All rights reserved.
//

import SpriteKit
import GameplayKit
var testmove:SKNode?

class GameScene: SKScene {
    var ButtonArray : [SKNode] = []
    //
    var GameSigns : [SKNode] = []
    //
    var nodeBG : SKSpriteNode?
    var pinch = UIPinchGestureRecognizer()
    //var cam: SKCameraNode?
    
    func degToRad(_ degree: Double) -> CGFloat {
        return CGFloat(degree / 180.0 * M_PI)
    }
    
    
    override func didMove(to view: SKView) {
        
        //1- camera and background setting
        //cam = SKCameraNode()
        //self.camera = cam as! SKCameraNode
        //self.addChild(cam!)
        ////
      //  kk = Int((self.frame.height))
     //   var ww = Int((self.frame.width))
        /////////
     //   var background = self.childNode(withName: "BG") as! SKSpriteNode
     //   background.size.width = CGFloat(ww)
   //     background.size.height =  CGFloat(kk+(kk/2))
   //     background.anchorPoint = CGPoint(x:0,y:0)
   //     background.position = CGPoint(x: -ww/2, y: -(kk))
        
        //2- get all important info from user defoult
        let userDef = UserDefaults.standard
        //a. get level or number of letter
        var arrayLL = userDef.array(forKey: "levels")
        var arrayML = userDef.array(forKey: "Mainlevels")
        var arrayCC = userDef.array(forKey: "Colors")
        var arrayGames = userDef.array(forKey: "Games")
        if  arrayLL==nil
        {
            arrayML = [1]
            arrayLL = [1]
            arrayCC = [[""]]
            arrayGames = [0]
            userDef.set(arrayCC, forKey: "Colors")
            userDef.setValue(arrayLL, forKey: "levels")
            userDef.setValue(arrayGames, forKey: "Games")
            userDef.setValue(arrayML, forKey: "Mainlevels")
            userDef.synchronize()
            
        }
        else
        {
            arrayLL = userDef.array(forKey: "levels") as! [Int]
        }
        
        // b. get if its free version or full version
        
        isFull = userDef.bool(forKey: "fullVersion")
        
        /// 3- put all buttons in one array
        for i in 0 ... 27
        {  ButtonArray.append(self.childNode(withName: "B"+String(i+1))!)
        }
        
        /////Game signs motion
        //var
        for i in 0 ... 8
        {
          GameSigns.append(self.childNode(withName: "gamesign"+String(i+1))!)
        }
        
        for m in 0 ..< GameSigns.count
        {
            let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(-6.5), duration: 0.3),
                                              SKAction.rotate(byAngle: 0.0, duration: 0.3),
                                              SKAction.rotate(byAngle: degToRad(6.5), duration: 0.3)])
             GameSigns[m].run(SKAction.repeatForever(sequence))
            //Chagne the texture to make the motion appear better!
        }
        
        /////Game signs motion--
        
        // 4- draw letter in buttons
        
        
        if (UIDevice.current.userInterfaceIdiom == .phone){
           
        
        for m in 0 ..< ButtonArray.count
    {
            
        var L = LetterDrawing()
        var idd = m+1
        var ArrGam = userDef.array(forKey: "Games") as! [Int]
        var out = userDef.array(forKey: "levels") as! [Int]
        var arrayML = userDef.array(forKey: "Mainlevels") as! [Int]
        
        var partOfletter =   L.setLetter(id: idd).prt
        if out.contains(idd) {
            
            
            for i in 0 ..< partOfletter.count
            {
                
                var node = SKShapeNode.init(path: partOfletter[i])
                node.path =  partOfletter[i]
                node.fillColor = UIColor(red: 0.863, green: 0.863, blue: 0.863, alpha: 1.0)
                node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                node.lineWidth = 30
                node.setScale(0.05)
                if(m >= 9){
                node.setScale(0.06)
                node.lineWidth = 30
                }
                if(m >= 19){
                    node.setScale(0.06)
                    node.lineWidth = 40
                    node.fillColor = UIColor(red: 0.863, green: 0.863, blue: 0.863, alpha: 1.0)
                    node.position.x = -40
                }
                node.zPosition = 3
                node.position.x = -20
                node.position.y = -40
                node.isUserInteractionEnabled = false
                
                ButtonArray[m].addChild(node)
            }}
        else
        {
            for i in 0 ..< partOfletter.count
            {
                var node = SKShapeNode.init(path: partOfletter[i])
                node.path =  partOfletter[i]
                node.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
                node.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
                node.setScale(0.04)
                node.zPosition = 1
                node.position.x = -20
                node.position.y = -40
                ButtonArray[m].addChild(node)
                ButtonArray[m].alpha = 0.4
            }}
        if(!(arrayML.contains(2)) && m==9 || !(arrayML.contains(3)) && m==19 )
        { ButtonArray[m].alpha = 0.4  }
        
        let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(-6.5), duration: 0.3),
                                          SKAction.rotate(byAngle: 0.0, duration: 0.3),
                                          SKAction.rotate(byAngle: degToRad(6.5), duration: 0.3)])
        ButtonArray[m].run(SKAction.repeatForever(sequence))
        
            }
    }
        
        else   if (UIDevice.current.userInterfaceIdiom == .pad){
           
           
            for m in 0 ..< ButtonArray.count
            {
                
            
                 var L = LetterDrawingiPad()
                var idd = m+1
                var ArrGam = userDef.array(forKey: "Games") as! [Int]
                var out = userDef.array(forKey: "levels") as! [Int]
                var arrayML = userDef.array(forKey: "Mainlevels") as! [Int]
                
                var partOfletter =   L.setLetter(id: idd).prt
                if out.contains(idd) {
                    
                    
                    for i in 0 ..< partOfletter.count
                    {
                        
                        var node = SKShapeNode.init(path: partOfletter[i])
                        node.path =  partOfletter[i]
                        node.fillColor = UIColor(red: 0.863, green: 0.863, blue: 0.863, alpha: 1.0)
                        node.strokeColor = UIColor(red: 0.522, green: 0.525, blue: 0.506, alpha: 1.0)
                        node.lineWidth = 40
                        node.setScale(0.06)
                        node.zPosition = 1
                        node.position.x = -55
                        node.position.y = -60
                        node.isUserInteractionEnabled = false
                        
                        ButtonArray[m].addChild(node)
                    }}
                else
                {
                    for i in 0 ..< partOfletter.count
                    {
                        var node = SKShapeNode.init(path: partOfletter[i])
                        node.path =  partOfletter[i]
                        node.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
                        node.strokeColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
                        node.setScale(0.06)
                        node.zPosition = 1
                        node.position.x = -55
                        node.position.y = -60
                        ButtonArray[m].addChild(node)
                        ButtonArray[m].alpha = 0.4
                    }}
                if(!(arrayML.contains(2)) && m==9 || !(arrayML.contains(3)) && m==19 )
                { ButtonArray[m].alpha = 0.4  }
                
                let sequence = SKAction.sequence([SKAction.rotate(byAngle: degToRad(-6.5), duration: 0.3),
                                                  SKAction.rotate(byAngle: 0.0, duration: 0.3),
                                                  SKAction.rotate(byAngle: degToRad(6.5), duration: 0.3)])
                ButtonArray[m].run(SKAction.repeatForever(sequence))
                
            }
            
        }
        
        
        // 5- define game node
        
        let game1Level1 = self.childNode(withName: "game1-1")
        let   game2Level1 = self.childNode(withName: "game1-2")
        let game3Level1 = self.childNode(withName: "game1-3")
        
        let  game1Level2 = self.childNode(withName: "game2-1")
        let game2Level2 = self.childNode(withName: "game2-2")
        let game3Level2 = self.childNode(withName: "game2-3")
        
        let game1Level3 = self.childNode(withName: "game3-1")
        let game2Level3 = self.childNode(withName: "game3-2")
        let game3Level3 = self.childNode(withName: "game3-3")
        
        gameArray = [game1Level1!,game2Level1!,game3Level1!,game1Level2!,game2Level2!,game3Level2!,game1Level3!,game2Level3!,game3Level3!]
        
        let ArrGam = userDef.array(forKey: "Games") as! [Int]
        
        for i in 0 ..< gameArray.count+1 {
            
            
            if (i>0){
                gameArray[i-1].alpha = 0.4
                if (ArrGam.contains(i))  {
                    
                    gameArray[i-1].alpha = 1
                } }}
        
        /// 6- if free version put lock on letters after 9 and games
        
        if !(isFull)
        {
            for m in 9 ..< ButtonArray.count
            {
                let lock = SKSpriteNode(imageNamed: "lock-1")
                 if (UIDevice.current.userInterfaceIdiom == .phone){
                lock.setScale(0.3)
                ButtonArray[m].addChild(lock)
                lock.zPosition = 2
                }else  if (UIDevice.current.userInterfaceIdiom == .pad){
                lock.setScale(0.6)
                ButtonArray[m].addChild(lock)
                lock.zPosition = 2
                }
            }
            
            for i in 3..<gameArray.count
            {
                
                let lock = SKSpriteNode(imageNamed: "lock-1")
                if (UIDevice.current.userInterfaceIdiom == .phone){
                lock.setScale(2)
                gameArray[i].addChild(lock)
                lock.zPosition = 20
                }else if (UIDevice.current.userInterfaceIdiom == .pad){
                    
                    lock.setScale(0.6)
                    gameArray[i].addChild(lock)
                    lock.zPosition = 2
                }
                
            }
            
        }
        
        ///// 7- define notebooke button and purchase button
        notebook = self.childNode(withName: "notebook")
        purchase = self.childNode(withName: "purchase")
        
    }
    var isFull = false
    var notebook :SKNode?
    var purchase : SKNode?
    
    var kk = 0
    var gameArray  : [SKNode] = []
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
     //   for touch in touches {
            
            
            
         //   let location = touch.location(in: self)
         //   let previousLocation = touch.previousLocation(in: self)
            
         //   let deltaY = previousLocation.y - location.y
         //   if (((cam?.position.y)! + deltaY ) < CGFloat(0) && ((cam?.position.y)! + deltaY ) > CGFloat(Float(-kk)*0.5) ){
           //     cam?.position.y += deltaY }}
        
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches{
         var loc = t.location(in: self)
            for m in 0..<ButtonArray.count
            {
                if ButtonArray[m].contains(loc)
                {
                    var no = ButtonArray[m].copy() as! SKSpriteNode
                    no.zPosition = 5
                    self.addChild(no)
                    no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
                }
            }
            
            if(notebook?.contains(loc))!{
                var no = notebook?.copy() as! SKSpriteNode
                no.zPosition = 5
                self.addChild(no)
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
            
            if(purchase?.contains(loc))!{
                var no = purchase?.copy() as! SKSpriteNode
                no.zPosition = 5
                self.addChild(no)
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
            
            for m in 0..<gameArray.count
            {
                if gameArray[m].contains(loc)
                {
                    var no = gameArray[m].copy() as! SKSpriteNode
                    no.zPosition = 20
                    self.addChild(no)
                    no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
                }
            }
            
        }
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches {
            
            var loc =  t.location(in: self)
            
            ///////////  NoteBook button
            
            if (notebook?.contains(loc))!
            {
                notebook?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                
                    if (UIDevice.current.userInterfaceIdiom == .phone){
                        var nextScene = SKScene(fileNamed: "board")
                        nextScene?.scaleMode = .aspectFill
                        self.view?.presentScene(nextScene!,transition:
                            SKTransition.crossFade(withDuration: 2))
                    }  else if (UIDevice.current.userInterfaceIdiom == .pad){
                        var nextScene = SKScene(fileNamed: "boardPad")
                        nextScene?.scaleMode = .aspectFill
                        self.view?.presentScene(nextScene!,
                        transition:SKTransition.crossFade(withDuration: 2))
                    }
                   
                })
            }
            ////////////  purchase button
            
            if (purchase?.contains(loc))!
            {
                purchase?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                  
                    if (UIDevice.current.userInterfaceIdiom == .phone){
                        var nextScene = SKScene(fileNamed: "PurcheseScene")
                        nextScene?.scaleMode = .aspectFill
                self.view?.presentScene(nextScene!,
                    transition:SKTransition.crossFade(withDuration: 2))
                        
                    }
                    else if (UIDevice.current.userInterfaceIdiom == .pad){
                        
                        var nextScene = SKScene(fileNamed: "PurchaseScenePad")
                        nextScene?.scaleMode = .aspectFill
                self.view?.presentScene(nextScene!,
                        transition:SKTransition.crossFade(withDuration: 2))
                    }
                    
                })
            }
            /////////// letters buttons
           
            //iphone
            
            if (UIDevice.current.userInterfaceIdiom == .phone){
            for m in 0..<ButtonArray.count
            {
                if ButtonArray[m].contains(loc)
                {
                    
                    var idd = m+1
                    var userDef = UserDefaults.standard
                    var out = userDef.array(forKey: "levels") as! [Int]
                    var arrayML = userDef.array(forKey: "Mainlevels") as! [Int]
                    
                    if (idd < 10 || (idd >= 10 && isFull && arrayML.contains(2)) ||
                        (idd >= 20 && isFull && arrayML.contains(3)) ){
                        if out.contains(idd) {
                            
                            ButtonArray[m].run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                                    var LG = SKScene(fileNamed: "LatterGame") as! LatterGame
                                    LG.setID(id: idd)
                                    LG.scaleMode = .aspectFill
                                    self.view?.presentScene(LG)})}
                        
                    }
                        
                        //if pressed on the tenth letter (only) then show purchase scene
                    else if (idd >= 10 && !(isFull))
                    {
                        purchase?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                            
                            
                            var nextScene = SKScene(fileNamed: "PurcheseScene") as! purchase
                                nextScene.scaleMode = .aspectFill
                self.view?.presentScene(nextScene,
                                        transition:SKTransition.crossFade(withDuration: 2))})
                        }
                    }
                
                }
               //ipad
            }else if (UIDevice.current.userInterfaceIdiom == .pad){
                
                for m in 0..<ButtonArray.count
                {
                    if ButtonArray[m].contains(loc)
                    {
                        
                        var idd = m+1
                        var userDef = UserDefaults.standard
                        var out = userDef.array(forKey: "levels") as! [Int]
                        var arrayML = userDef.array(forKey: "Mainlevels") as! [Int]
                        
                        if (idd < 10 || (idd >= 10 && isFull && arrayML.contains(2)) ||
                            (idd >= 20 && isFull && arrayML.contains(3)) ){
                            if out.contains(idd) {
                                
                                ButtonArray[m].run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                                    var LG = SKScene(fileNamed: "LatterGamePad") as! LatterGame
                                    LG.setID(id: idd)
                                    LG.scaleMode = .aspectFill
                                    self.view?.presentScene(LG)})}
                            
                        }
                            
                            //if pressed on the tenth letter (only) then show purchase scene
                        else if (idd >= 10 && !(isFull))
                        {
                            purchase?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                                
                                
                                var nextScene = SKScene(fileNamed: "PurchaseScenePad") as! purchase
                                nextScene.scaleMode = .aspectFill
                                self.view?.presentScene(nextScene,
                                                    transition:SKTransition.crossFade(withDuration: 2))})
                        }
                    }
                    
                }
                
            }
            
            
            
            
            ////////// games Buttons
            
            for i in 0 ..< gameArray.count+1 {
                
                var userDef = UserDefaults.standard
                let ArrGam = userDef.array(forKey: "Games") as! [Int]
                if (i>0){
                    if (ArrGam.contains(i))  {
                        
                        if gameArray[i-1].contains(loc){
                            gameArray[i-1].run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                                
                                if (i==1 || i==4 || i==7)
                                {
                                    if (UIDevice.current.userInterfaceIdiom == .phone){
                                        var game = SKScene(fileNamed: "Game"+String(i)+"Scene") as! game1
                                        game.fruit(frouitType: i)
                                        game.scaleMode = .aspectFill
                                        self.view?.presentScene(game)
                                        
                                    }
                                        
                                    else if (UIDevice.current.userInterfaceIdiom == .pad){
                                        var game = SKScene(fileNamed: "Game"+String(i)+"ScenePad")  as! game1
                                        game.fruit(frouitType: i)
                                        game.scaleMode = .aspectFill
                                        self.view?.presentScene(game)
                                    }
                                }
                                
                                if (i==2 || i==5 || i==8)
                                {
                                    if (UIDevice.current.userInterfaceIdiom == .phone){
                                        var game = SKScene(fileNamed: "Game"+String(i)+"Scene") as! game2
                                        game.BGType(BGT: i)
                                        game.scaleMode = .aspectFill
                                        self.view?.presentScene(game)
                                    }
                                        
                                    else if (UIDevice.current.userInterfaceIdiom == .pad){
                                        var game = SKScene(fileNamed: "Game"+String(i)+"ScenePad") as! game2
                                        game.BGType(BGT: i)
                                        game.scaleMode = .aspectFill
                                        self.view?.presentScene(game)
                                    }
                                }
                                
                                
                                if (i==3 || i==6 || i==9)  {
                                    if (UIDevice.current.userInterfaceIdiom == .phone){
                                        var game = SKScene(fileNamed: "Game"+String(i)+"Scene") as! game3
                                        game.setNumber(num:i)
                                        game.scaleMode = .aspectFill
                                        self.view?.presentScene(game)}
                                        
                                    else if (UIDevice.current.userInterfaceIdiom == .pad){
                                        var game = SKScene(fileNamed: "Game"+String(i)+"ScenePad") as! game3
                                        game.setNumber(num:i)
                                        game.scaleMode = .aspectFill
                                        self.view?.presentScene(game)
                                    }}
                            })
                            
                        } }}}
            
        }
        
        
        
        
    }
    
    
    
}

    
    
    
    
    


