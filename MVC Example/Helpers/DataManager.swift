//
//  DataManager.swift
//  MVC Example
//
//  Created by Alexey Efimov on 26/06/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    func saveMeals(_ meals: [Meal]) {
        // TODO: Implement savemeals
    }
    
    func loadMeals() -> [Meal] {
        let meals = [
            Meal(name: "Первое", photo: #imageLiteral(resourceName: "First"), notes: "Суп", rating: 7, date: Date()),
            Meal(name: "Второе", photo: #imageLiteral(resourceName: "Second"), notes: "Плоф", rating: 9, date: Date()),
            Meal(name: "Третье", photo: #imageLiteral(resourceName: "Third"), notes: "Десерт", rating: 5, date: Date())
        ]
        return meals
    }
}
