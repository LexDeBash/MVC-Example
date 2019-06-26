//
//  Meal.swift
//  MVC Example
//
//  Created by Alexey Efimov on 26/06/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

struct Meal {
    
    var name: String
    var photo: UIImage
    var notes: String
    var rating: Int
    var date: Date
    
}

// MARK: - Formatting
extension Meal {
    
    var ratingBar: String {
        return String(repeating: "⭐️", count: rating)
    }
    
    var currentDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: date)
    }
}
