//
//  InitialScene.swift
//  LearnArabicLetter
//
//  Created by Ghadah Alghamdi on 28/03/2017.
//  Copyright © 2017 بدور. All rights reserved.
//

import SpriteKit
import GameplayKit

class InitialScene: SKScene {
    
    override func didMove(to view: SKView) {
        // self.size = view.bounds.size
        // self.scaleMode = .aspectFill
        let wait = SKAction.wait(forDuration: 2)
        if (UIDevice.current.userInterfaceIdiom == .phone){
            if let phoneScene = GameScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                // scene.size = view.bounds.size
                // scene.size =  view.frame.size
                // UIScreen.main.bounds.size
                phoneScene.scaleMode = .aspectFill
                // Present the scene
                let action = SKAction.run {
                    view.presentScene(phoneScene, transition: SKTransition.fade(with: UIColor.white, duration: 2))
                    
                }
                self.run(SKAction.sequence([wait, action]))
            }
        }else if (UIDevice.current.userInterfaceIdiom == .pad){
            if let padScene = GameScene(fileNamed: "GameScenePad") {
                // Set the scale mode to scale to fit the window
                // scene.size = view.bounds.size
                // scene.size =  view.frame.size
                // UIScreen.main.bounds.size
                padScene.scaleMode = .aspectFill
                // Present the scene
                let action = SKAction.run {
                    view.presentScene(padScene, transition: SKTransition.fade(with: UIColor.white, duration: 2))
                    
                }
                self.run(SKAction.sequence([wait, action]))
            }
        }
        
    }
}

