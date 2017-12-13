//
//  MealsViewController.swift
//  UberEats
//
//  Created by Othman Mashaab on 11/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import UIKit

class MealsViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 140
        title = "Meals"
    }
}

extension MealsViewController{
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        return cell
    }
}
