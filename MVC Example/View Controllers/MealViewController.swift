//
//  ViewController.swift
//  MVC Example
//
//  Created by Alexey Efimov on 26/06/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    private let meals = Meal.getMeals()
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let mealDetailVC = segue.destination as? MealDetailViewController else { return }
        let meal = meals[indexPath.row]
        mealDetailVC.meal = meal
    }
}

// MARK: - UITableViewDataSource
extension MealViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mealCell", for: indexPath) as! MealCell
        
        let meal = meals[indexPath.row]
        cell.configure(with: meal)
        
        return cell
    }
}
