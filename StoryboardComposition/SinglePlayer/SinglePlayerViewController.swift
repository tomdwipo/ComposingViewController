//
//  SinglePlayerViewController.swift
//  StoryboardComposition
//
//  Created by user on 26/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import Foundation
import UIKit

final class SinglePlayerViewController: UIViewController {
    private(set) var player: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "player", let vc = segue.destination as? PlayerScoreViewController {
            player = vc
        }
    }
}
