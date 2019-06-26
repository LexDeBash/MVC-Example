//
//  ViewController.swift
//  MVC Example
//
//  Created by Alexey Efimov on 26/06/2019.
//  Copyright © 2019 Alexey Efimov. All rights reserved.
//

import UIKit

class MealViewController: UIViewController {
    
    // tied with view
    @IBOutlet var tableView: UITableView!
    
    let cellController = CellController()
    
    // tied with model
    private var meals: [Meal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        meals = DataManager.shared.loadMeals()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "mealDetailSegue" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let meal = meals[indexPath.row]
        let mealDetailVC = segue.destination as! MealDetailViewController
        mealDetailVC.meal = meal
    }

}

// MARK: - UITableViewDataSource
extension MealViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mealCell", for: indexPath)
        
        let meal = meals[indexPath.row]
        cellController.configure(cell, with: meal)
        
        return cell
    }
}
