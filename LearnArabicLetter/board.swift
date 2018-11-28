//
//  board.swift
//  LearnArabicLetter
//
//  Created by بدور on ٢٠‏/٣‏/٢٠١٧.
//  Copyright © ٢٠١٧ بدور. All rights reserved.
//

import Foundation
import SpriteKit
class board: SKScene {
    var _color : UIColor?
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
    
    var defoualColor = UIColor(red: 1.000, green: 0.819, blue: 0.531, alpha: 1.000)
    
    var nameOfColor = "0"
    override func didMove(to view: SKView) {
        // self.size = view.bounds.size
        // self.scaleMode = .aspectFill
        let userDef = UserDefaults.standard
        var arrayCC = userDef.array(forKey: "Colors")
        
        
        if arrayCC?.count==1{
            
            print("nothing")}
        else {
            var arrayLL = userDef.array(forKey: "levels") as! [Int]
            var num = arrayLL.count
            for m in 1 ..< num
            {
                var back = self.childNode(withName: "loc"+String(m))
                
                var L = LetterDrawing()
                var partOfletter =   L.setLetter(id: m).prt
                var colorOF = arrayCC?[m] as! [String]
                
                for i in 0 ..< partOfletter.count
                {
                    var node = SKShapeNode.init(path: partOfletter[i])
                    node.setScale(0.2)
                    
                    if colorOF[i] == "0"
                    {
                        _color = defoualColor
                    }
                    
                    if colorOF[i] == "1"
                    {
                        _color = c1
                    }
                    if colorOF[i] == "2"
                    {
                        _color = c2
                    }
                    if colorOF[i] == "3"
                    {
                        _color = c3
                    }
                    if colorOF[i] == "4"
                    {
                        _color = c4
                    }
                    if colorOF[i] == "5"
                    {
                        _color = c5
                    }
                    if colorOF[i] == "6"
                    {
                        _color = c6
                    }
                    if colorOF[i] == "7"
                    {
                        _color = c7
                    }
                    node.zPosition = 1
                    node.fillColor = _color!
                    //if phone
                    if(UIDevice.current.userInterfaceIdiom == .phone){
                        node.position.x = 65
                        node.position.y = 0
                        node.setScale(0.18)
                    }
                    //close if
                    
                    //if ipad
                    if(UIDevice.current.userInterfaceIdiom == .pad){
                        node.position.x = -80
                        node.position.y = -150
                        node.setScale(0.16)
                    }
                    //close ipad
                    
                    back?.addChild(node)
                    //back?.alpha = 0
                }}}
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches
        {
            var Home = self.childNode(withName: "home")
            let loc = t.location(in: self)
            if (Home?.contains(loc))! {
                Home?.run(SKAction.fadeAlpha(by: 0.5, duration: 0.5), completion: {
                    if (UIDevice.current.userInterfaceIdiom == .phone){
                        var phoneMainScene = SKScene(fileNamed: "GameScene")
                        //  mainScene?.size = (self.view?.bounds.size)!
                        phoneMainScene?.scaleMode = .aspectFill
                        self.view?.presentScene(phoneMainScene)}
                    else if (UIDevice.current.userInterfaceIdiom == .pad){
                        var padMainScene = SKScene(fileNamed: "GameScenePad")
                        //  mainScene?.size = (self.view?.bounds.size)!
                        padMainScene?.scaleMode = .aspectFill
                        self.view?.presentScene(padMainScene)
                    }
                })
            }
            
        }}
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches {
            var Home = self.childNode(withName: "home")
            var loc =  t.location(in: self)
            if (Home?.contains(loc))! {
                var no = Home?.copy() as! SKSpriteNode
                no.zPosition = 5
                self.addChild(no)
                no.run(SKAction.sequence([SKAction.scale(by: 1.1, duration: 0.1),SKAction.removeFromParent()]))
            }
            
        }
    }
    
    
    
}



