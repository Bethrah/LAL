//
//  game2.swift
//  LearnArabicLetter
//
//  Created by بدور on ٢٤‏/٧‏/٢٠١٧.
//  Copyright © ٢٠١٧ بدور. All rights reserved.
//
import SpriteKit
import GameplayKit
import GoogleMobileAds
import AVFoundation

class game2: SKScene {
    
    //PUT CHEECKY MONKEY MUSIC
    
    
    var bgMusic: AVAudioPlayer?
    var cardArray : [SKSpriteNode] = []
    //array of card state "true" = front  "false" = back
    var cardStatus : [Bool] = []
    var  frontTexture1 :SKTexture?
    var  frontTexture2 :SKTexture?
    var  frontTexture3 :SKTexture?
    var s : CGSize?
    var alphaWnidow : SKNode?
    var frameWindow : SKNode?
    var homeBtn : SKNode?
    var NextBtn : SKNode?
    
    override func didMove(to view: SKView) {
        
        do{bgMusic = try AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: Bundle.main.path(forResource: "cheeky-monkey", ofType: "mp3")!) as URL)
            bgMusic?.numberOfLoops = -1
        }
            
        catch {print ("Invalid")}
        playSound()
        
        startNewGame()
        //////////
         if (UIDevice.current.userInterfaceIdiom == .phone){
        alphaWnidow  = self.childNode(withName: "alphaBG")
         } else if(UIDevice.current.userInterfaceIdiom == .pad){
            alphaWnidow  = self.childNode(withName: "alphaBGPad")
        }
        //frameWindow = self.childNode(withName: "frame")
        
        homeBtn  = self.childNode(withName: "home")
        NextBtn = self.childNode(withName: "next")
      
        
      
      
        ///////1   get 3 random letter card .. now we have only 8 card
        var r1 = arc4random_uniform(7)+1
        var r2 = arc4random_uniform(7)+1
        while r2==r1 {
            r2 = arc4random_uniform(7)+1
        }
        var r3 = arc4random_uniform(7)+1
        while r3==r1 || r3==r2{
            r3 = arc4random_uniform(7)+1
        }
        ////////2
        for i in 1 ... 6
        {
            let card = self.childNode(withName: "card"+String(i))
            cardArray.append(card as! SKSpriteNode)
            
        }
        ///3
        for i in 1 ... 6
        {
            cardStatus.append(false)
        }
        
        //4
        cr1 = Int(arc4random_uniform(6))
        cr2 = Int(arc4random_uniform(6))
        while cr2==cr1 {
            cr2 = Int(arc4random_uniform(6))
        }
        cr3 = Int(arc4random_uniform(6))
        while cr3==cr1 || cr3==cr2{
            cr3 = Int(arc4random_uniform(6))
        }
        cr4 = Int(arc4random_uniform(6))
        while cr4==cr1 || cr4==cr2 || cr4==cr3  {
            cr4 = Int(arc4random_uniform(6))
        }
        cr5 = Int(arc4random_uniform(6))
        while cr5==cr1 || cr5==cr2 || cr5==cr3 || cr5==cr4 {
            cr5 = Int(arc4random_uniform(6))
        }
        
        cr6 = Int(arc4random_uniform(6))
        while cr6==cr1 || cr6==cr2 || cr6==cr3 || cr6==cr4 || cr6==cr5 {
            cr6 = Int(arc4random_uniform(6))
        }
        coubleCard = [[cardArray[cr1],cardArray[cr2]],[cardArray[cr3],cardArray[cr4]],[cardArray[cr5],cardArray[cr6]]]
        //5
        frontTexture1 = SKTexture(imageNamed: "LA"+String(r1))
        frontTexture2 = SKTexture(imageNamed: "LA"+String(r2))
        frontTexture3 = SKTexture(imageNamed: "LA"+String(r3))
        
        frontTextureArr =  [frontTexture1!,frontTexture1!,frontTexture1!,frontTexture1!,frontTexture1!,frontTexture1!]
        frontTextureArr[cr1] = frontTexture1!
        frontTextureArr[cr2] = frontTexture1!
        frontTextureArr[cr3] = frontTexture2!
        frontTextureArr[cr4] = frontTexture2!
        frontTextureArr[cr5] = frontTexture3!
        frontTextureArr[cr6] = frontTexture3!
        
        
        lable = self.childNode(withName: "SKLabelNode") as! SKLabelNode
      /*  if (cardCouble1Done && cardCouble2Done && cardCouble3Done)
        {var PalySound = SKAction.playSoundFileNamed("excelant.m4a", waitForCompletion: true)
            run(PalySound)}*/
    }
    
    
    func playSound(){
        bgMusic?.play()
    }
    
    func pauseSound(){
        bgMusic?.pause()}
    
    func stopSound(){
        bgMusic?.stop()}
    
    var coubleCard : [[SKSpriteNode]] = []
    var frontTextureArr = [ SKTexture ]()
    var wiggle : SKAction?
    var lable : SKLabelNode?
    var isCardOpen = false
    var opendedCrad = -1
    var cr1 = 0
    var cr2 = 0
    var cr3 = 0
    var cr4 = 0
    var cr5 = 0
    var cr6 = 0
    var cardCouble1Done = false
    var cardCouble2Done = false
    var cardCouble3Done = false


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            
            if (homeBtn?.contains(location))! {
                
                var no = homeBtn?.copy() as! SKSpriteNode
                no.zPosition = 5
                
                self.addChild(no)
                
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
            if (cardCouble1Done && cardCouble2Done && cardCouble3Done)
            {          if (NextBtn?.contains(location))!
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
                    
                var arryy = userDef.array(forKey: "Games") as! [Int]
                arryy.append(self.cardBackT+1)
                userDef.set(arryy, forKey: "Games")
                userDef.synchronize()
                if (UIDevice.current.userInterfaceIdiom == .phone){
                    var phoneMainScene = SKScene(fileNamed: "Game"+String(self.cardBackT+1)+"Scene")
                    //   mainScene?.size = (self.view?.bounds.size)!
                    phoneMainScene?.scaleMode = .aspectFill
                    self.view?.presentScene(phoneMainScene)
                } else if (UIDevice.current.userInterfaceIdiom == .pad){
                    var padMainScene = SKScene(fileNamed: "Game"+String(self.cardBackT+1)+"ScenePad")
                    //   mainScene?.size = (self.view?.bounds.size)!
                    padMainScene?.scaleMode = .aspectFill
                    self.view?.presentScene(padMainScene)
                }
                
                }}
            
            if (homeBtn?.contains(location))!
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
                if (self.cardCouble1Done && self.cardCouble2Done && self.cardCouble3Done){
                    var arryy = userDef.array(forKey: "Games") as! [Int]
                    arryy.append(self.cardBackT+1)
                    userDef.set(arryy, forKey: "Games")
                    userDef.synchronize()
                   
                }
                if (UIDevice.current.userInterfaceIdiom == .phone){
                    var phoneMainScene = SKScene(fileNamed: "GameScene")
                    //   mainScene?.size = (self.view?.bounds.size)!
                    phoneMainScene?.scaleMode = .aspectFill
                    self.view?.presentScene(phoneMainScene)
                }else if (UIDevice.current.userInterfaceIdiom == .pad){
                    var padMainScene = SKScene(fileNamed: "GameScenePad")
                    //   mainScene?.size = (self.view?.bounds.size)!
                    padMainScene?.scaleMode = .aspectFill
                    self.view?.presentScene(padMainScene)
                }
               
            }
            //////////////   card 0
            
            if(cardArray[cr1].contains(location)){
                
                if(isCardOpen){
                    if (cardCouble1Done) {}
                    else {
                        if(cardStatus[cr2]) {  // matches
                            
                            
                            flip(id: cr1, frontTexture : frontTexture1!)
                            lable?.text = "  done"
                            isCardOpen = false
                            cardCouble1Done = true
                            // cardArray[0].isUserInteractionEnabled = false
                            //  cardArray[4].isUserInteractionEnabled = false
                            
                            
                        }
                        else if (cardStatus[cr1]) {
                            self.flip(id:cr1, frontTexture : self.frontTexture1!)
                            isCardOpen = false
                            
                        }
                        else {
                            // the opened card is not match
                            flip(id: cr1, frontTexture : frontTexture1!)
                            cardArray[cr1].run(SKAction.wait(forDuration: 1), completion: {
                                
                                //flip current card
                                self.flip(id: self.cr1, frontTexture : self.frontTexture1!)
                                // flip prev card
                                self.flip(id: self.opendedCrad, frontTexture : self.frontTextureArr[self.opendedCrad])
                                
                            })
                            lable?.text = " try Again"
                            isCardOpen = false
                        }}}
                else {
                    
                    if (cardStatus[cr1]) { }
                    else{
                        flip(id: cr1, frontTexture : frontTexture1!)
                        lable?.text = "find match letter"
                        isCardOpen = true
                        opendedCrad = cr1
                        
                    }}}
            
            /////////////    card 4
            
            if(cardArray[cr2].contains(location)){
                
                if(isCardOpen){
                    if (cardCouble1Done){}
                    else {
                        if(cardStatus[cr1]) {  // matches
                            
                            
                            flip(id: cr2, frontTexture : frontTexture1!)
                            lable?.text = "  done"
                            // cardArray[0].isUserInteractionEnabled = false
                            // cardArray[4].isUserInteractionEnabled = false
                            isCardOpen = false
                            cardCouble1Done = true
                            
                        }
                        else if (cardStatus[cr2]) {
                            self.flip(id:cr2, frontTexture : self.frontTexture1!)
                            isCardOpen = false
                            
                        } else {
                            // the opened card is not match
                            flip(id: cr2, frontTexture : frontTexture1!)
                            cardArray[cr2].run(SKAction.wait(forDuration: 1), completion: {
                                
                                //flip current card
                                self.flip(id: self.cr2, frontTexture : self.frontTexture1!)
                                // flip prev card
                                self.flip(id: self.opendedCrad, frontTexture : self.frontTextureArr[self.opendedCrad])
                                
                            })
                            lable?.text = " try Again"
                            isCardOpen = false
                        }}}
                else {
                    
                    if (cardStatus[cr2]) { }
                    else{
                        flip(id:cr2 , frontTexture : frontTexture1!)
                        lable?.text = "find match letter"
                        isCardOpen = true
                        opendedCrad = cr2
                        
                    }}}
            
            //////////  card 2
            if(cardArray[cr3].contains(location)){
                
                if(isCardOpen){
                    if (cardCouble2Done) {}
                    else {
                        if(cardStatus[cr4]) {  // matches
                            
                            
                            flip(id: cr3, frontTexture : frontTexture2!)
                            //  cardArray[2].isUserInteractionEnabled = false
                            //  cardArray[5].isUserInteractionEnabled = false
                            lable?.text = " 2 and 5 done"
                            isCardOpen = false
                            cardCouble2Done = true
                            
                        }
                        else if (cardStatus[cr3]) {
                            self.flip(id:cr3, frontTexture : self.frontTexture2!)
                            isCardOpen = false
                            
                        } else {
                            // the opened card is not match
                            flip(id: cr3, frontTexture : frontTexture2!)
                            cardArray[cr3].run(SKAction.wait(forDuration: 1), completion: {
                                
                                //flip current card
                                self.flip(id: self.cr3, frontTexture : self.frontTexture2!)
                                // flip prev card
                                self.flip(id: self.opendedCrad, frontTexture : self.frontTextureArr[self.opendedCrad])
                                
                            })
                            lable?.text = " try Again"
                            isCardOpen = false
                        }}}
                else {
                    
                    if (cardStatus[cr3]) { }
                    else{
                        flip(id: cr3, frontTexture : frontTexture2!)
                        lable?.text = "find match letter"
                        isCardOpen = true
                        opendedCrad = cr3
                        
                    }}}
            ///////// card 5
            if(cardArray[cr4].contains(location)){
                
                if(isCardOpen){
                    
                    if (cardCouble2Done){}
                    else {
                        
                        if(cardStatus[cr3]) {  // matches
                            
                            cardCouble2Done = true
                            flip(id: cr4, frontTexture : frontTexture2!)
                            lable?.text = "done"
                            isCardOpen = false
                            //  cardArray[2].isUserInteractionEnabled = false
                            //   cardArray[5].isUserInteractionEnabled = false
                            
                        }
                        else if (cardStatus[cr4]) {
                            self.flip(id:cr4, frontTexture : self.frontTexture2!)
                            isCardOpen = false
                            
                        } else {
                            // the opened card is not match
                            flip(id: cr4, frontTexture : frontTexture2!)
                            cardArray[cr4].run(SKAction.wait(forDuration: 1), completion: {
                                
                                //flip current card
                                self.flip(id: self.cr4, frontTexture : self.frontTexture2!)
                                // flip prev card
                                self.flip(id: self.opendedCrad, frontTexture : self.frontTextureArr[self.opendedCrad])
                                
                            })
                            lable?.text = " try Again"
                            isCardOpen = false
                        }}}
                else {
                    
                    if (cardStatus[cr4]) { }
                    else{
                        flip(id: cr4, frontTexture : frontTexture2!)
                        lable?.text = "find match letter"
                        isCardOpen = true
                        opendedCrad = cr4
                        
                    }}}
            
            ///////// card 1
            if(cardArray[cr5].contains(location)){
                
                if(isCardOpen){
                    if (cardCouble3Done) {}
                    else {
                        
                        if(cardStatus[cr6]) {  // matches
                            
                            flip(id: cr5, frontTexture : frontTexture3!)
                            lable?.text = " 1 and 3 done"
                            isCardOpen = false
                            // cardArray[1].isUserInteractionEnabled = false
                            //  cardArray[3].isUserInteractionEnabled = false
                            cardCouble3Done = true
                        }
                            
                        else if (cardStatus[cr5]) {
                            self.flip(id:cr5, frontTexture : self.frontTexture3!)
                            isCardOpen = false
                            
                        } else {
                            
                            // the opened card is not match
                            flip(id: cr5, frontTexture : frontTexture3!)
                            cardArray[cr5].run(SKAction.wait(forDuration: 1), completion: {
                                
                                //flip current card
                                self.flip(id:self.cr5, frontTexture : self.frontTexture3!)
                                // flip prev card
                                self.flip(id: self.opendedCrad, frontTexture : self.frontTextureArr[self.opendedCrad])
                                
                            })
                            lable?.text = " try Again"
                            isCardOpen = false
                        }} }
                else {
                    
                    if (cardStatus[cr5]) { }
                    else{
                        flip(id: cr5, frontTexture : frontTexture3!)
                        lable?.text = "find match letter"
                        isCardOpen = true
                        opendedCrad = cr5}
                    
                }}
            
            ///////// card 3
            if(cardArray[cr6].contains(location)){
                
                if(isCardOpen){
                    if (cardCouble3Done){}
                    else{
                        if(cardStatus[cr5]) {  // matches
                            
                            
                            flip(id: cr6, frontTexture : frontTexture3!)
                            lable?.text = " 1 3 done"
                            isCardOpen = false
                            cardCouble3Done = true
                            
                            
                        }
                        else if (cardStatus[cr6]) {
                            self.flip(id:cr6, frontTexture : self.frontTexture3!)
                            isCardOpen = false
                            
                        } else {
                            // the opened card is not match
                            flip(id: cr6, frontTexture : frontTexture3!)
                            
                            cardArray[cr6].run(SKAction.wait(forDuration: 1), completion: {
                                
                                //flip current card
                                self.flip(id: self.cr6, frontTexture : self.frontTexture3!)
                                // flip prev card
                                self.flip(id: self.opendedCrad, frontTexture : self.frontTextureArr[self.opendedCrad])
                                
                            })
                            
                            
                            
                            lable?.text = " try Again"
                            isCardOpen = false
                        }}}
                else {
                    
                    if (cardStatus[cr6]) { }
                    else{
                        
                        flip(id: cr6, frontTexture : frontTexture3!)
                        lable?.text = "find match letter"
                        isCardOpen = true
                        opendedCrad = cr6 }
                    
                }}
            
            
            
            ////////////////
            
            
            
            
        }}
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
        for touch in touches {
            let loc = touch.location(in: self)
        if (homeBtn?.contains(loc))! {
            
            var no = homeBtn?.copy() as! SKSpriteNode
            no.zPosition = 10
            
            self.addChild(no)
            
            no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
        }
    }
    }
    var cardBack = SKTexture(imageNamed: "card_back")
    var cardBackT = 0
    func BGType(BGT: Int) {
        cardBackT = BGT
        if (cardBackT == 2){
            cardBack = SKTexture(imageNamed:"card-back2-1")
        }
        if (cardBackT == 5){
            cardBack = SKTexture(imageNamed:"cardback2")
        }
        if (cardBackT == 8){
            cardBack = SKTexture(imageNamed:"cardback3")
        }
        
        
        
        
    }
    
    func flip( id : Int , frontTexture : SKTexture) {
        s = cardArray[id].size
        //  let flip = SKAction.scaleX(to: -1, duration: 0.4)
        let firstHalfFlip = SKAction.scaleX(to: 0, duration: 0.4)
        let secondHalfFlip = SKAction.scaleX(to: 1, duration: 0.4)
        
        cardArray[id].setScale(1.0)
        
        cardArray[id].size = s!
        
        //  cardArray[id].run(firstHalfFlip)
        
        if(cardStatus[id]) {
            //  changeColor = SKAction.run( { self.cardArray[id].texture = SKTexture(imageNamed: "card_back")})
            cardArray[id].run(firstHalfFlip) {
                self.cardArray[id].texture = self.cardBack
                self.cardStatus[id] = false
                
                
                self.cardArray[id].run(secondHalfFlip)
            }
        }
        else {
            //  changeColor = SKAction.run( { self.cardArray[id].texture = frontTexture})
            cardArray[id].run(firstHalfFlip) {
                self.cardArray[id].texture = frontTexture
                self.cardStatus[id] = true
                
                
                self.cardArray[id].run(secondHalfFlip)
            }
            
        }
        
        // var action = SKAction.sequence([secondHalfFlip, changeColor!] )
        
        //  cardArray[id].run(secondHalfFlip)
        
        
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
    
    var changeColor : SKAction?
    
    
    override func update(_ currentTime: TimeInterval) {
        
        if (cardCouble1Done && cardCouble2Done && cardCouble3Done)
        {
            
            
            alphaWnidow?.run(SKAction.fadeAlpha(to: 0.6,duration: 1))
            
            //frameWindow?.run(SKAction.fadeIn(withDuration: 1))
            
            homeBtn?.position.y = (NextBtn?.position.y)!
            homeBtn?.position.x = (NextBtn?.position.x)! + (NextBtn?.frame.size.width)!
            
            homeBtn?.run(SKAction.fadeIn(withDuration: 1))
            NextBtn?.run(SKAction.fadeIn(withDuration: 1))
            
        }
    }
}

