//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Handole Kim on 8/16/17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye  // Unit tests can access to the class and methods.

class BullsEyeTests: XCTestCase {
    
    var gameUnderTest: BullsEyeGame!
    
    /* This creates SUT (system under test) object at the class level.
     * So, this test class can access SUT's object's properties and methods.
     */
    override func setUp() {
        super.setUp()
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()          // targetValue created
    }
    
    override func tearDown() {
        gameUnderTest = nil                   // release SUT object
        super.tearDown()
    }
    
    /* This is a test function uses XCTAssert to test model.
     */
    func testScoreIsComputed() {
        // 1. given
        let guess = gameUnderTest.targetValue + 5
        
        // 2. when
        _ = gameUnderTest.check(guess: guess)
        
        // 3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95)
    }
}
