//
//  Meal.swift
//  MVC Example
//
//  Created by Alexey Efimov on 26/06/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import Foundation

struct Meal {
    var name: String
    var photo: String
    var notes: String
    var rating: Int
    var date: Date
    
    var ratingBar: String {
        String(repeating: "⭐️", count: rating)
    }
    
    var currentDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: date)
    }
    
}

extension Meal {
    static func getMeals() -> [Meal] {
        [
            Meal(name: "Первое", photo: "First", notes: "Суп", rating: 7, date: Date()),
            Meal(name: "Второе", photo: "Second", notes: "Плоф", rating: 9, date: Date()),
            Meal(name: "Третье", photo: "Third", notes: "Десерт", rating: 5, date: Date())
        ]
    }
}
