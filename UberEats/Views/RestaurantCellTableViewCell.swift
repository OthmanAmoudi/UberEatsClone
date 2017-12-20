//
//  RestaurantCellTableViewCell.swift
//  UberEats
//
//  Created by Othman Mashaab on 17/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import UIKit
import Firebase
import Alamofire
import Foundation

class RestaurantCellTableViewCell: UITableViewCell {

    @IBOutlet weak var restaurantImage: UIImageView!
    @IBOutlet weak var restaurantNameLabel: UILabel!
    @IBOutlet weak var restaurantAddressLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var restaurant:Restaurant!{
        didSet{
            self.updateUI()
        }
    }
    
    func updateUI(){
        self.restaurantNameLabel.text = restaurant.name
        self.restaurantAddressLabel.text = restaurant.address
        self.restaurantImage.image = nil
        if let imageURL = URL(string:restaurant.logoURL!){
        Alamofire.request(imageURL).responseData(completionHandler: { (responseData) in
                DispatchQueue.main.async {
                    if let imageData = responseData.data{
                        self.restaurantImage.image = UIImage(data: imageData)
                    }
                }
            })
        }
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
