//
//  MultiplayerViewController.swift
//  StoryboardComposition
//
//  Created by user on 26/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import Foundation
import UIKit

final class MultiplayerViewController: UIViewController {
   
     private(set) var players: MultiPlayerScoreViewController?
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "players", let vc = segue.destination as? MultiPlayerScoreViewController {
               players = vc
           }
          
       }
}
