//
//  MealDetailViewController.swift
//  MVC Example
//
//  Created by Alexey Efimov on 26/06/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class MealDetailViewController: UIViewController {

    @IBOutlet var mealStackView: UIStackView!
    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.contentMode = .scaleToFill
            imageView.layer.cornerRadius = 50
        }
    }
    
    @IBOutlet var mealRatingLabel: UILabel!
    @IBOutlet var mealNotesLabel: UILabel!
    @IBOutlet var mealDateLabel: UILabel!
    
    var meal: Meal!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        upadateUI(with: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        upadateUI(with: size)
    }

}

// MARK: - Private Methods
extension MealDetailViewController {
    
    private func upadateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        mealStackView.axis = isVertical ? .vertical : .horizontal
        
        title = meal.name
        imageView.image = UIImage(named: meal.photo)
        mealRatingLabel.text = meal.ratingBar
        mealNotesLabel.text = meal.notes
        mealDateLabel.text = meal.currentDate
    }
}
