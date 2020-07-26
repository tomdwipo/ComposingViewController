//
//  PlayerScoreViewController.swift
//  StoryboardComposition
//
//  Created by user on 26/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import Foundation
import UIKit

final class PlayerScoreViewController: UIViewController {
    @IBOutlet private weak var nameLabel: UILabel?
    @IBOutlet private weak var scoreLabel: UILabel?
    
    var name: String? {
        set { nameLabel?.text = newValue }
        get { return nameLabel?.text }
    }
    
    var score: String?{
        set { scoreLabel?.text = newValue }
        get { return scoreLabel?.text }
    }
    
}
