//
//  GameScene.swift
//  Learn Arabic Letters
//
//  Created by بدور on ١٤‏/٨‏/٢٠١٧.
//  Copyright © ٢٠١٧ com.bethrah. All rights reserved.
//

import SpriteKit
import StoreKit

class purchase: SKScene , SKPaymentTransactionObserver , SKProductsRequestDelegate{
    var titleLabel : SKSpriteNode?
    var descriptionLabele : SKSpriteNode?
    var purchaseBtn : SKLabelNode?
    var restoreBtn : SKLabelNode?
    var product : SKProduct?
    var productID = "com.bethrah.LearnArabicLetter.fullVersion"
    var homeBtn : SKNode?
    
    ///
    var button1: SKNode?
    var button2: SKNode?
    var text1: SKNode?
    var text2: SKNode?
    var isFull: Bool = true
    ///
    override func didMove(to view: SKView) {
        
        ////
    
        titleLabel = self.childNode(withName: "title") as! SKSpriteNode
        descriptionLabele = self.childNode(withName: "description") as! SKSpriteNode
        purchaseBtn = self.childNode(withName: "purchBtn")! as! SKLabelNode
        restoreBtn = self.childNode(withName: "restoreBtn")! as! SKLabelNode
        homeBtn = self.childNode(withName: "home")
        
        ///
        button1 = self.childNode(withName: "button1")
        button2 = self.childNode(withName: "button2")
        text1 = self.childNode(withName: "text1")
        text2 = self.childNode(withName: "text2")
        ///
        
        
        /// 1- get if full version purchesed befor
        let userDf = UserDefaults.standard
        isFull = userDf.bool(forKey: "fullVersion")
        
        ///// check internet conection
        if Reachability.isConnectedToNetwork(){
            if (isFull)
            {
                //you already have the full version
                titleLabel?.texture = SKTexture(imageNamed: "message-4-t")
                descriptionLabele?.texture = SKTexture(imageNamed: "message-2")
                descriptionLabele?.size.width = 700
                descriptionLabele?.size.height = 235
                titleLabel?.size.width = 400
                titleLabel?.size.height = 74
                purchaseBtn?.removeFromParent()
                restoreBtn?.removeFromParent()
                button1?.removeFromParent()
                button2?.removeFromParent()
                text1?.removeFromParent()
                text2?.removeFromParent()
            }
            else
            {
                descriptionLabele?.texture = SKTexture(imageNamed:"message-waiting")
                descriptionLabele?.size.width = 450
                descriptionLabele?.size.height = 87
                
            }
            
        }else{
            //offline internet connection
            descriptionLabele?.texture = SKTexture(imageNamed: "message-1")
        }
        
        
        
        
        SKPaymentQueue.default().add(self)
        getPurcheseInfo()
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            if(purchaseBtn?.contains(location))!
            {
                print("clicked")
                doPurchese()
            }
            if(restoreBtn?.contains(location))!
            {
                SKPaymentQueue.default().restoreCompletedTransactions()
                
            }
            if(homeBtn?.contains(location))!
            {
                if (UIDevice.current.userInterfaceIdiom == .phone){
                    var home = SKScene(fileNamed: "GameScene")
                    home?.scaleMode = .aspectFill
                    self.view?.presentScene(home)
                }else if (UIDevice.current.userInterfaceIdiom == .pad){
                    var home = SKScene(fileNamed: "GameScenePad")
                    home?.scaleMode = .aspectFill
                    self.view?.presentScene(home)
                }
                
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches{
            let loc = t.location(in: self)
            if(homeBtn?.contains(loc))!{
                var no = homeBtn?.copy() as! SKSpriteNode
                no.zPosition = 5
                self.addChild(no)
                no.run(SKAction.sequence([SKAction.scale(by: 1.3, duration: 0.1),SKAction.removeFromParent()]))
            }
        }
    }
    
    func doPurchese(){
        
        let payment = SKPayment(product: product!)
        SKPaymentQueue.default().add(payment)
        
    }
    
    
    func getPurcheseInfo() {
        
        if(SKPaymentQueue.canMakePayments())
        {
            let request = SKProductsRequest(productIdentifiers: NSSet(objects: self.productID) as! Set<String>)
            request.delegate = self
            request.start()
        }
        else {
            
            titleLabel?.texture = SKTexture(imageNamed: "message-t")
            descriptionLabele?.texture = SKTexture(imageNamed: "message-3")
            
        }
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        
        var products = response.products
        if (products.count==0)
        {
            //product not purchased
            titleLabel?.texture = SKTexture(imageNamed: "message-t")
            descriptionLabele?.texture = SKTexture(imageNamed: "message-3")
            
        }
            
        else {
            
            
            
            product = products[0]
            
            if !(isFull)
            {
            titleLabel?.texture = SKTexture(imageNamed: "message-t")
            titleLabel?.size.width = 190
            titleLabel?.size.height = 90
            
            descriptionLabele?.texture = SKTexture(imageNamed: "message-3")
            descriptionLabele?.size.width = 700
            descriptionLabele?.size.height = 205
            }
            
            
        }
        let invalids = response.invalidProductIdentifiers
        for product in invalids {
            print ("product not found")
            
        }
        
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        for transaction in transactions {
            
            switch transaction.transactionState {
                
            case SKPaymentTransactionState.purchased:
                
                SKPaymentQueue.default().finishTransaction(transaction)
                titleLabel?.texture = SKTexture(imageNamed: "message-thanku")
                titleLabel?.size.width = 221
                titleLabel?.size.height = 140
                descriptionLabele?.texture = SKTexture(imageNamed: "message-4")
                descriptionLabele?.size.width = 650
                descriptionLabele?.size.height = 226
                purchaseBtn?.removeFromParent()
                restoreBtn?.removeFromParent()
                button1?.removeFromParent()
                button2?.removeFromParent()
                text1?.removeFromParent()
                text2?.removeFromParent()
                let save = UserDefaults.standard
                save.set(true, forKey: "fullVersion")
                save.synchronize()
                
            case SKPaymentTransactionState.restored:
                
                SKPaymentQueue.default().finishTransaction(transaction)
                titleLabel?.texture = SKTexture(imageNamed: "message-thanku")
                descriptionLabele?.texture = SKTexture(imageNamed: "message-restore")
                descriptionLabele?.size.width = 650
                descriptionLabele?.size.height = 111
                titleLabel?.size.width = 221
                titleLabel?.size.height = 140
                purchaseBtn?.removeFromParent()
                restoreBtn?.removeFromParent()
                
                button1?.removeFromParent()
                button2?.removeFromParent()
                text1?.removeFromParent()
                text2?.removeFromParent()
                
                let save = UserDefaults.standard
                save.set(true, forKey: "fullVersion")
                save.synchronize()
                
                
            case SKPaymentTransactionState.failed:
                
                SKPaymentQueue.default().finishTransaction(transaction)
                titleLabel?.texture = SKTexture(imageNamed: "message-t")
             
                descriptionLabele?.texture = SKTexture(imageNamed: "message-3")
                
                
            default:
                break
            }
            
        }
}
}
