//
//  TimeBarViewController.swift
//  StoryboardComposition
//
//  Created by user on 26/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit


final class TimeBarViewController : UIViewController{
    @IBOutlet private weak var barView: UIView?
    
    var progress: CGFloat = 1 {
        didSet { /* Update bar frame */}
    }
}
