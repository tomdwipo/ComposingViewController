//
//  MultiPlayerScoreViewController.swift
//  StoryboardComposition
//
//  Created by user on 26/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

final class MultiPlayerScoreViewController: UIViewController {
   
    
    
    private(set) var playerOne: PlayerScoreViewController?
    private(set) var playerTwo: PlayerScoreViewController?

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayerOne", let vc = segue.destination as? PlayerScoreViewController {
            playerOne = vc
        }
        
        if segue.identifier == "PlayerTwo", let vc = segue.destination as? PlayerScoreViewController {
            playerTwo = vc
        }
    }
    
}
