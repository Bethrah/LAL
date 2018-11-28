//
//  first.swift
//  LearnArabicLetter
//
//  Created by بدور on ٢٣‏/٨‏/٢٠١٧.
//  Copyright © ٢٠١٧ com.bethrah. All rights reserved.
//

import GoogleMobileAds
import UIKit
import SpriteKit


class first : SKScene {
    var interstitial: GADInterstitial!

    override func didMove(to view: SKView) {
       
        startNewGame()
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches
        {
            var btn = self.childNode(withName: "toSecond")
            let loc = t.location(in: self)
            if (btn?.contains(loc))!
            {
                
                let currentViewController:UIViewController=UIApplication.shared.keyWindow!.rootViewController!
                if self.interstitial.isReady {
                    self.interstitial.present(fromRootViewController: currentViewController)
                } else {
                    print("Ad wasn't ready")
                }
                var phoneLG = SKScene(fileNamed: "secondScene")
                phoneLG?.scaleMode = .aspectFill
                self.view?.presentScene(phoneLG)
            }
        }}

    fileprivate func startNewGame() {
        createAndLoadInterstitial()}
    
    fileprivate func createAndLoadInterstitial() {
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-6829827223853004/3581186162")
        
        
        let request = GADRequest()
        interstitial.load(request)
    }

    
}
