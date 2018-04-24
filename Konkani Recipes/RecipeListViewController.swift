//
//  RecipeListViewController.swift
//  Konkani Recipes
//
//  Created by Manju Bhandary on 4/23/18.
//  Copyright © 2018 Manju Bhandary. All rights reserved.
//

import UIKit

class RecipeListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let vegetarianRecipes = ["Ambya Sassam", "Charmurya Upkeri", "Bhenda Ghashi", "Alvatti", "Bhenda Ghashi"]
    let fishRecipes = ["Masala Fry", "Rawa Fry", "Naked Fry"]
    let chickenRecipes = ["Chicken Ghee Roast", "Chicken Cafreal", "White Curry"]
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected row \(indexPath.row) in section \(indexPath.section)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return vegetarianRecipes.count
        case 1:
            return fishRecipes.count
        case 2:
            return chickenRecipes.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = vegetarianRecipes[indexPath.row]
        case 1:
            cell.textLabel?.text = fishRecipes[indexPath.row]
        case 2:
            cell.textLabel?.text = chickenRecipes[indexPath.row]
        default:
            cell.textLabel?.text = "This shouldn't happen"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Vegetarian"
        case 1:
            return "Fish"
        case 2:
            return "Chicken"
        default:
            return nil
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}
