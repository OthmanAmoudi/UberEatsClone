//
//  MealDetailsViewController.swift
//  UberEats
//
//  Created by Othman Mashaab on 11/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import UIKit

class MealDetailsViewController: UIViewController{
    
    @IBOutlet weak var QuantityButtonContainerView: UIView!
    @IBOutlet weak var quantityLabel: UILabel!
    var quantity = 1
    
    @IBAction func IncreaseDidPressed(_ sender: Any) {
        quantity += 1
        quantityLabel.text = String(quantity)

    }
    @IBAction func DecreaseDidPressed(_ sender: Any) {
        if (quantity > 1){
        quantity -= 1
        quantityLabel.text = String(quantity)
        }
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        quantityLabel.text = String(quantity)
        QuantityButtonContainerView.layer.cornerRadius = 20.0
        QuantityButtonContainerView.layer.masksToBounds = true
        QuantityButtonContainerView.layer.borderColor = UIColor.gray.cgColor
        QuantityButtonContainerView.layer.borderWidth = 1.0
        
    }
}
