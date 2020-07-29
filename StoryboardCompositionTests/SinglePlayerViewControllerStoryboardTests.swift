//
//  SinglePlayerViewControllerStoryboardTests.swift
//  StoryboardCompositionTests
//
//  Created by user on 29/07/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import XCTest
import Foundation
@testable import StoryboardComposition

class SinglePlayerViewControllerStoryboardTests: XCTestCase {
    let storyboard = UIStoryboard(name: "SinglePlayerGame", bundle: nil)

    func test_singlePlayerGameStoryboardInitialViewController_isSinglePlayerViewController(){
        XCTAssertTrue(storyboard.instantiateInitialViewController() is SinglePlayerViewController)
    }
    
    func test_singlePlayerGameStoryboard_setsUpPlayerForSinglePlayerViewController(){
        let vc = storyboard.instantiateInitialViewController() as! SinglePlayerViewController
        _ = vc.view
        
        XCTAssertNotNil(vc.player)
    }
}
