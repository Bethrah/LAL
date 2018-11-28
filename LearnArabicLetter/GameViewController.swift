//
//  GameViewController.swift
//  LearnArabicLetter
//
//  Created by بدور on 1/22/17.
//  Copyright © 2017 بدور. All rights reserved.
//

//
//  GameViewController.swift
//  LearnArabicLetter
//
//  Created by بدور on 1/22/17.
//  Copyright © 2017 بدور. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            if (UIDevice.current.userInterfaceIdiom == .phone){
                //load the SKScene
                if let phoneScene = InitialScene(fileNamed: "InitialScene") {
                    
                    phoneScene.scaleMode = .aspectFill
                    // present scene
                    view.presentScene(phoneScene)
                }
            }
                
            else if (UIDevice.current.userInterfaceIdiom == .pad){
                if let padScene = GameScene(fileNamed: "GameScenePad") {
                    
                    padScene.scaleMode = .aspectFill
                    // present scene
                    view.presentScene(padScene)
                }
            }
            
            
            
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = false
            view.showsNodeCount = false
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

