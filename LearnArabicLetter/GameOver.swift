//

import SpriteKit
import GoogleMobileAds
import UIKit

class GameOver : SKScene {
    
    // sounds
    var soundLetter : SKAction?
    var soundWord :  SKAction?
    var soundBell : SKAction?
    
    /// The interstitial ad.
    var interstitial: GADInterstitial!
    
    
    var gameOver : SKLabelNode?
    var Slabel : SKLabelNode?
    var w : SKSpriteNode?
    var p : SKSpriteNode?
    var loc19: SKNode?
    var loc18: SKNode?
    var loc23: SKNode?
    var loc22: SKNode?
    var loc27: SKNode?
    var loc26: SKNode?
    var loc24: SKNode?
    
    var Home : SKNode?
    var Redo : SKNode?
    var Next : SKNode?
    
    
    var soundButton: SKNode?
    
    var FL : [SKShapeNode] = []
    var colorIDofSingleLetter : [[CGFloat]] = []
    
    var id = 0
    
    var timeUP = false
    var score = 0
    var arryColorsOFletter : [String] = []
    var alphaWnidow : SKNode?
    var frameWindow : SKNode?
    var label1Window : SKNode?
    var label2Window : SKNode?
    var noteBookBtn : SKNode?
    var posnoteBookBtn : CGPoint?
    var gameBtn : SKNode?
    var isfull = false
    override func didMove(to view: SKView) {
        
        
        startNewGame()
        
        /////////// congrate window
        
        
        
        /////////////
        
        // Give user the option to start the next game.
        
        var wit = SKAction.wait(forDuration: 2)
        
        var uderDef = UserDefaults.standard
        isfull = uderDef.bool(forKey: "fullVersion")
        
        gameOver = self.childNode(withName: "text") as! SKLabelNode?
        Slabel = self.childNode(withName: "stars") as! SKLabelNode?
        
        Home = self.childNode(withName: "home")
        Next = self.childNode(withName: "next")
        Redo = self.childNode(withName: "redo")
        noteBookBtn = self.childNode(withName: "notBtn")
        gameBtn = self.childNode(withName: "gameBtn")
        
        var st1 = self.childNode(withName: "star1") as! SKSpriteNode
        var st2 = self.childNode(withName: "star2") as! SKSpriteNode
        var st3 = self.childNode(withName: "star3") as! SKSpriteNode
        
        
        soundButton = self.childNode(withName: "speaker")
        
        if(!timeUP){
            
            
            
            w = self.childNode(withName: "loc19-a") as! SKSpriteNode
            p = self.childNode(withName: "loc23-a") as! SKSpriteNode
            w?.alpha = 1
            w?.texture = SKTexture(imageNamed: "word"+String(id))
            p?.texture = SKTexture(imageNamed: "pad-pic"+String(id))
            loc18 = self.childNode(withName: "loc18")
            loc19 = self.childNode(withName: "loc19")
            loc23 = self.childNode(withName: "loc23")
            loc22 = self.childNode(withName: "loc22")
            loc26 = self.childNode(withName: "loc26")
            loc27 = self.childNode(withName: "loc27")
            loc24 = self.childNode(withName: "loc20")
            
            loc18?.removeFromParent()
            loc19?.removeFromParent()
            loc22?.removeFromParent()
            loc23?.removeFromParent()
            loc26?.removeFromParent()
            loc27?.removeFromParent()
            loc24?.removeFromParent()
            
            
        }
        
        
        if(timeUP)
        {
            noteBookBtn?.removeFromParent()
            gameBtn?.removeFromParent()
            
            var s = SKAction.playSoundFileNamed("tryAgain.m4a", waitForCompletion: true)
            run(SKAction.sequence([wit,s]))
            
            gameOver?.text = "انتهى الوقت"
            Slabel?.isHidden = true
            FL.removeAll()
            Next?.removeFromParent()
            soundButton?.removeFromParent()
            
            w = self.childNode(withName: "loc19-a") as! SKSpriteNode
            p = self.childNode(withName: "loc23-a") as! SKSpriteNode
            w?.removeFromParent()
            p?.removeFromParent()
            st1.isHidden = true
            st2.isHidden = true
            st3.isHidden = true
            if (UIDevice.current.userInterfaceIdiom == .pad){
                Home?.position = CGPoint(x: self.size.width/2+70, y: self.size.height/2-250)
                Redo?.position = CGPoint(x: self.size.width/2-(Home?.frame.width)!+125, y: self.size.height/2-250)
                var redosize = self.childNode(withName: "redo") as! SKSpriteNode
                redosize.size = CGSize(width: 150, height: 150)
                var homesize = self.childNode(withName: "home") as! SKSpriteNode
                homesize.size = CGSize(width: 150, height: 150)
            }
            else if (UIDevice.current.userInterfaceIdiom == .phone){
                Home?.position = CGPoint(x: self.size.width/2+70, y: self.size.height/2-180)
                Redo?.position = CGPoint(x: self.size.width/2-(Home?.frame.width)!+70, y: self.size.height/2-180)
                var redosize = self.childNode(withName: "redo") as! SKSpriteNode
                redosize.size = CGSize(width: 150, height: 150)
                var homesize = self.childNode(withName: "home") as! SKSpriteNode
                homesize.size = CGSize(width: 150, height: 150)
                
            }
            //Redo?.position.x = 100
            //Redo?.position.y = 100
            Redo?.run(SKAction.repeatForever(SKAction.sequence([SKAction.fadeOut(withDuration: 1),SKAction.fadeIn(withDuration: 1)])))
        }
            
        else {
            
            /////////
            if (id==9||id == 19||id == 28){
                
                if (id==9)
                {
                    var arryy = uderDef.array(forKey: "Games") as! [Int]
                    arryy.append(1)
                    uderDef.set(arryy, forKey: "Games")
                    uderDef.synchronize()
                    
                }
                if (id==19)
                {
                    var arryy = uderDef.array(forKey: "Games") as! [Int]
                    arryy.append(4)
                    uderDef.set(arryy, forKey: "Games")
                    uderDef.synchronize()
                    
                }
                if (id==28)
                {
                    var arryy = uderDef.array(forKey: "Games") as! [Int]
                    arryy.append(7)
                    uderDef.set(arryy, forKey: "Games")
                    uderDef.synchronize()
                    
                }
                
                alphaWnidow  = self.childNode(withName: "alphaBG")
                alphaWnidow?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeAlpha(to: 0.4,duration: 1)]))
                
                frameWindow = self.childNode(withName: "kidFrame")
                frameWindow?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                
                label1Window  = self.childNode(withName: "label1")
                label1Window?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                
                label2Window = self.childNode(withName: "label2")
                label2Window?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                
                if(UIDevice.current.userInterfaceIdiom == .phone){
                Home?.position.y = (noteBookBtn?.position.y)!
                Home?.position.x = (noteBookBtn?.position.x)! + (noteBookBtn?.frame.size.width)! + 25
                var homesize = self.childNode(withName: "home") as! SKSpriteNode
                homesize.size = CGSize(width: 110, height: 110)
                
                }else if(UIDevice.current.userInterfaceIdiom == .pad){
                    Home?.position.y = (noteBookBtn?.position.y)!
                    Home?.position.x = (noteBookBtn?.position.x)! + (noteBookBtn?.frame.size.width)!
                    var homesize = self.childNode(withName: "home") as! SKSpriteNode
                    homesize.size = CGSize(width: 130, height: 130)
                    label1Window  = self.childNode(withName: "label1")
                    label1Window?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                    
                    label2Window = self.childNode(withName: "label2")
                    label2Window?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                }
                
                Home?.alpha = 0
                noteBookBtn?.alpha = 0
                gameBtn?.alpha = 0
                
                Home?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                noteBookBtn?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                gameBtn?.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
                
                Home?.zPosition = 9
                
                
                
                
                
                Next?.removeFromParent()
            }
            else {
                
                noteBookBtn?.removeFromParent()
                gameBtn?.removeFromParent() }
            /////////
            
            
            var alarm = self.childNode(withName: "alarmPic")
            alarm?.isHidden = true
            soundLetter = SKAction.playSoundFileNamed(String(id)+".m4a", waitForCompletion: true)
            run(SKAction.sequence([wit,soundLetter!]))
            for i in 0 ..< FL.count
            {
                
                
                var n = FL[i].copy() as! SKShapeNode
                arryColorsOFletter.append(n.name!)
                self.addChild(n)
                var res =  SKAction.scale(by: 0.6, duration: 1)
                var pol = self.childNode(withName: "letterArea")
                if(UIDevice.current.userInterfaceIdiom == .phone){
                    pol?.position.x = 200
                    pol?.position.y = 630
                }
                if(UIDevice.current.userInterfaceIdiom == .pad){
                    pol?.position.x = 300
                    pol?.position.y = 670
                }
                var move = SKAction.move(to: (pol?.position)!, duration: 1)
                n.run(SKAction.group([res,move]))
                
            }
            
            
            
            
            var u1 = self.childNode(withName: "loc17") as! SKSpriteNode
            u1.texture = SKTexture(imageNamed: "pad-pos"+String(id)+"-1")
            var u2 = self.childNode(withName: "loc21") as! SKSpriteNode
            u2.texture = SKTexture(imageNamed: "pad-pos"+String(id)+"-2")
            var u3 = self.childNode(withName: "loc25") as! SKSpriteNode
            u3.texture = SKTexture(imageNamed: "pad-pos"+String(id)+"-3")
            u1.run(SKAction.sequence([SKAction.wait(forDuration: 2),SKAction.fadeIn(withDuration: 1)]))
            u2.run(SKAction.sequence([SKAction.wait(forDuration: 3),SKAction.fadeIn(withDuration: 1)]))
            u3.run(SKAction.sequence([SKAction.wait(forDuration: 4),SKAction.fadeIn(withDuration: 1)]))
            
            
            Next?.run(SKAction.wait(forDuration: 4),completion :{
                self.Next?.run(SKAction.repeatForever(SKAction.sequence([SKAction.fadeOut(withDuration: 1),SKAction.fadeIn(withDuration: 1)])))})
            
            if score==3 {
                
                
                st1.run(SKAction.wait(forDuration: 1),completion :{
                    st1.run(SKAction.fadeIn(withDuration: 1))
                    self.explosion(pos: st1.position)
                    
                })
                st2.run(SKAction.wait(forDuration: 2),completion :{
                    st2.run(SKAction.fadeIn(withDuration: 1))
                    self.explosion(pos: st2.position)
                    
                })
                st3.run(SKAction.wait(forDuration: 3),completion :{
                    st3.run(SKAction.fadeIn(withDuration: 1))
                    self.explosion(pos: st3.position)
                    
                })
                
                var PalySound = SKAction.playSoundFileNamed("excelant.m4a", waitForCompletion: true)
                run(PalySound)
            }
            
            if score==2
            {
                var PalySound = SKAction.playSoundFileNamed("good.m4a", waitForCompletion: true)
                run(PalySound)
                
                st1.run(SKAction.wait(forDuration: 1),completion :{
                    st1.run(SKAction.fadeIn(withDuration: 1))
                    self.explosion(pos: st1.position)
                    
                })
                st2.run(SKAction.wait(forDuration: 2),completion :{
                    st2.run(SKAction.fadeIn(withDuration: 1))
                    self.explosion(pos: st2.position)
                    
                })
                
                
            }
            if score==1
            {
                var PalySound = SKAction.playSoundFileNamed("good.m4a", waitForCompletion: true)
                run(PalySound)
                
                
                st1.run(SKAction.wait(forDuration: 1),completion :{
                    st1.run(SKAction.fadeIn(withDuration: 1))
                    self.explosion(pos: st1.position)
                    
                })
                
                
            }
            
            
            Redo?.removeFromParent()
            
        }
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        for t in touches {
            
            var loc =  t.location(in: self)
            
            
            if (Home?.contains(loc))!
            {      var no = Home?.copy() as! SKSpriteNode
                no.zPosition = 5
                self.addChild(no)
                no.run(SKAction.sequence([SKAction.scale(by: 1.1, duration: 0.2),SKAction.removeFromParent()]))
                
            }
            if (timeUP){
                if (Redo?.contains(loc))!
                {
                    var no = Redo?.copy() as! SKSpriteNode
                    no.zPosition = 5
                    self.addChild(no)
                    no.run(SKAction.sequence([SKAction.scale(by: 1.1, duration: 0.2),SKAction.removeFromParent()]))}}
                
            else{
                
                if (Next?.contains(loc))!
                {
                    var no = Next?.copy() as! SKSpriteNode
                    no.zPosition = 5
                    self.addChild(no)
                    no.run(SKAction.sequence([SKAction.scale(by: 1.1, duration: 0.2),SKAction.removeFromParent()]))
                    
                }}}
        
        //add this
        if !(id==28) {
        }
        
    }
    
    
    func setScore (sc : Int ){
        score = sc
        if score > 0
        {
            timeUP = false
        }
        else
        { timeUP = true
        }
        
    }
    func setId(Gid:Int, letter : [SKShapeNode]){
        FL = letter
        id = Gid
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches
        {
            let loc = t.location(in: self)
            
            if(soundButton?.contains(loc))!
            {
                soundLetter = SKAction.playSoundFileNamed(String(id)+".m4a", waitForCompletion: true)
                run(soundLetter!)
            }
            if (Home?.contains(loc))!
            {
                Home?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                    self.saveDate ()
                    if !(self.isfull){
                        let currentViewController:UIViewController=UIApplication.shared.keyWindow!.rootViewController!
                        if self.interstitial.isReady {
                            self.interstitial.present(fromRootViewController: currentViewController)
                        } else {
                            print("Ad wasn't ready")
                        }
                    }
                    
                    if (UIDevice.current.userInterfaceIdiom == .phone){
                        
                        var phoneMainScene = SKScene(fileNamed: "GameScene") as! GameScene
                        //mainScene.size = (self.view?.bounds.size)!
                        phoneMainScene.scaleMode = .aspectFill
                        self.view?.presentScene(phoneMainScene)}
                        
                        
                    else if (UIDevice.current.userInterfaceIdiom == .pad){
                        
                        var padMainScene = SKScene(fileNamed: "GameScenePad") as! GameScene
                        //mainScene.size = (self.view?.bounds.size)!
                        padMainScene.scaleMode = .aspectFill
                        self.view?.presentScene(padMainScene)
                    }
                    
                    
                })}
            
            
            
            if (timeUP){
                if (Redo?.contains(loc))!
                {
                    
                    if !(isfull){
                        let currentViewController:UIViewController=UIApplication.shared.keyWindow!.rootViewController!
                        if self.interstitial.isReady {
                            self.interstitial.present(fromRootViewController: currentViewController)
                        } else {
                            print("Ad wasn't ready")
                        }
                    }
                    Redo?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                        if (UIDevice.current.userInterfaceIdiom == .phone){
                            var phoneLG = SKScene(fileNamed: "LatterGame") as! LatterGame
                            phoneLG.setID(id: self.id)
                            phoneLG.scaleMode = .aspectFill
                            self.view?.presentScene(phoneLG)}
                        else if (UIDevice.current.userInterfaceIdiom == .pad){
                            var padLG = SKScene(fileNamed: "LatterGamePad") as! LatterGame
                            padLG.setID(id: self.id)
                            padLG.scaleMode = .aspectFill
                            self.view?.presentScene(padLG)
                        }
                    })}}
                
            else{
                
                if (self.id==9||self.id == 19||self.id == 28){
                    
                    if (gameBtn?.contains(loc))!{
                        saveDate()
                        if (self.id == 9){
                            if (UIDevice.current.userInterfaceIdiom == .phone){
                            var game1 = SKScene(fileNamed: "Game1Scene") as! game1
                            game1.fruit(frouitType: 1)
                            game1.scaleMode = .aspectFill
                            self.view?.presentScene(game1)
                                
                            }else  if (UIDevice.current.userInterfaceIdiom == .pad){
                            var game1 = SKScene(fileNamed: "Game1ScenePad") as! game1
                            game1.fruit(frouitType: 1)
                            game1.scaleMode = .aspectFill
                            self.view?.presentScene(game1)
                            }
                        }
                        if (self.id == 19){
                            if (UIDevice.current.userInterfaceIdiom == .phone){
                            var game1 = SKScene(fileNamed: "Game4Scene") as! game1
                            game1.fruit(frouitType: 4)
                            game1.scaleMode = .aspectFill
                            self.view?.presentScene(game1)
                                
                            }else if (UIDevice.current.userInterfaceIdiom == .pad){
                            var game1 = SKScene(fileNamed: "Game4ScenePad") as! game1
                            game1.fruit(frouitType: 4)
                            game1.scaleMode = .aspectFill
                            self.view?.presentScene(game1)
                            }
                        }
                        if (self.id == 28){
                             if (UIDevice.current.userInterfaceIdiom == .phone){
                            var game1 = SKScene(fileNamed: "Game7Scene") as! game1
                            game1.fruit(frouitType: 7)
                            game1.scaleMode = .aspectFill
                            self.view?.presentScene(game1)
                             }else  if (UIDevice.current.userInterfaceIdiom == .pad){
                            var game1 = SKScene(fileNamed: "Game7ScenePad") as! game1
                            game1.fruit(frouitType: 7)
                            game1.scaleMode = .aspectFill
                            self.view?.presentScene(game1)
                            }
                        }
                    }
                    if (noteBookBtn?.contains(loc))!{
                        saveDate()
                         if (UIDevice.current.userInterfaceIdiom == .phone){
                        var not = SKScene(fileNamed: "board")
                         not?.scaleMode = .aspectFill
                            self.view?.presentScene(not)
                            
                        } else if (UIDevice.current.userInterfaceIdiom == .pad){
                            var not = SKScene(fileNamed: "boardPad")
                            not?.scaleMode = .aspectFill
                            self.view?.presentScene(not)
                        }
                        
                    }}  else {
                    
                    if (Next?.contains(loc))!
                    {                          saveDate()
                        
                        Next?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                            if !(self.isfull){
                                let currentViewController:UIViewController=UIApplication.shared.keyWindow!.rootViewController!
                                if self.interstitial.isReady {
                                    self.interstitial.present(fromRootViewController: currentViewController)
                                } else {
                                    print("Ad wasn't ready")
                                }}
                            if (UIDevice.current.userInterfaceIdiom == .phone){
                                var phoneLG = SKScene(fileNamed: "LatterGame") as! LatterGame
                                // LG.size = (self.view?.bounds.size)!
                                phoneLG.scaleMode = .aspectFill
                                phoneLG.setID(id: self.id+1)
                                self.view?.presentScene(phoneLG)}
                            else if (UIDevice.current.userInterfaceIdiom == .pad){
                                var padLG = SKScene(fileNamed: "LatterGamePad") as! LatterGame
                                // LG.size = (self.view?.bounds.size)!
                                padLG.scaleMode = .aspectFill
                                padLG.setID(id: self.id+1)
                                self.view?.presentScene(padLG)
                            }
                        })
                        
                    }}}}}
    
    
    fileprivate func startNewGame() {
        createAndLoadInterstitial()}
    
    fileprivate func createAndLoadInterstitial() {
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-6829827223853004/3581186162")
        
        
        let request = GADRequest()
        interstitial.load(request)
    }
    func explosion(pos: CGPoint) {
        var emitterNode = SKEmitterNode(fileNamed: "spaks.sks")
        emitterNode?.particleSize = CGSize(width: 60, height: 60)
        emitterNode?.particlePosition = pos
        self.addChild(emitterNode!)
        // Don't forget to remove the emitter node after the explosion
        self.run(SKAction.wait(forDuration: 2), completion: { emitterNode?.removeFromParent() })
        
    }
    
    
    func saveDate (){
        var uderDef = UserDefaults.standard
        var arryy = uderDef.array(forKey: "levels") as! [Int]
        
        var arryyColor = uderDef.array(forKey: "Colors") as! [[String]]
        
        if arryy.contains(self.id+1) {
            arryyColor[self.id] = self.arryColorsOFletter
            uderDef.set(arryyColor, forKey: "Colors")
            uderDef.synchronize()
            
        }
            
        else {
            arryyColor.append(self.arryColorsOFletter)
            arryy.append(self.id+1)
            uderDef.set(arryyColor, forKey: "Colors")
            uderDef.set(arryy, forKey: "levels")
            uderDef.synchronize()}
    }
    
}

