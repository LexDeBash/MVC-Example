//
//  MealCell.swift
//  MVC Example
//
//  Created by Alexey Efimov on 26/06/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class MealCell: UITableViewCell {
    func configure(with meal: Meal) {
        textLabel?.text = meal.name
        detailTextLabel?.text = meal.ratingBar
        imageView?.image = UIImage(named: meal.photo)
    }
}
