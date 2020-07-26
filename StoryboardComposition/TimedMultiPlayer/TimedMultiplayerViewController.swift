//
//  TimedMultiplayerViewController.swift
//  StoryboardComposition
//
//  Created by user on 26/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import Foundation
import UIKit

final class TimedMultiplayerViewController: UIViewController {
    private(set) var timeBar: TimeBarViewController?
    private(set) var players: MultiPlayerScoreViewController?
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "timeBar", let vc = segue.destination as? TimeBarViewController {
            timeBar = vc
        }
        
        if segue.identifier == "multiPlayers", let vc = segue.destination as? MultiPlayerScoreViewController {
            players = vc
        }
    }
    
}
