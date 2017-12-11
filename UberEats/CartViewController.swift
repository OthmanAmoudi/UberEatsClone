//
//  CartViewController.swift
//  UberEats
//
//  Created by Othman Mashaab on 11/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import UIKit

class CartViewController : UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var menuBarButtonItem: UIBarButtonItem!
    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.dataSource = self
        menuBarButtonItem.target = self.revealViewController()
        menuBarButtonItem.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}

extension CartViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartItemCell", for: indexPath)
        return cell
    }
    
}
