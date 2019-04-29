//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Gabriel Eli Akdemir on 4/14/19.
//  Copyright © 2019 Bahdo LLC. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    //MARK: Meal Class Tests
    
    //Confirm that the Meal initializer returns a Meal object when passed valid paramters
    func testMealInitializationSucceeds(){
        //Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal) //verifies by checking Meal obj not nil
        
        //Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    //Confirm Meal initializer returns nil when passed a negative rating or an empty name
    func testMealInitializationFails(){
        //Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        //Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        //Rating exceeds max
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
    }

}
