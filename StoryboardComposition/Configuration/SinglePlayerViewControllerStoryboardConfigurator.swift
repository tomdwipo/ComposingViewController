//
//  SinglePlayerViewControllerStoryboardConfigurator.swift
//  StoryboardComposition
//
//  Created by user on 29/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

final class SinglePlayerViewControllerStoryboardConfigurator: NSObject {
    var observation: NSKeyValueObservation?
    
    @IBOutlet private weak var player: UIViewController? {
        didSet{
            observation = player?.observe(\.parent) { player, changes in
                if let singlePlayerViewController = player.parent as? SinglePlayerViewController {
                    singlePlayerViewController.player = player as? PlayerScoreViewController
                }
            }
        }
    }
}
