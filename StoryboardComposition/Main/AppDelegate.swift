//
//  AppDelegate.swift
//  StoryboardComposition
//
//  Created by user on 26/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
  
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if let views = (window?.rootViewController as? UITabBarController)?.viewControllers,
            let single = views[0] as? SinglePlayerViewController,
            let multi = views[1] as? MultiplayerViewController,
            let timed = views[2] as? TimedMultiplayerViewController {
            
            _ = single.view
            _ = multi.view
            _ = timed.view
            
            single.player?.name = "test"
            
            multi.players?.playerOne?.name = "test 1"
            multi.players?.playerTwo?.name = "test 2"
            
            timed.players?.playerOne?.name = "test 3"
            timed.players?.playerTwo?.name = "test 4"

        }
 
        return true
    }

}

