//
//  Meal.swift
//  FoodTracker
//
//  Created by Gabriel Eli Akdemir on 4/26/19.
//  Copyright © 2019 Bahdo LLC. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        //Initialization fails if there is no name or rating is negative
        guard !name.isEmpty else{
            return nil
        }
        
        //rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        //Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
}
