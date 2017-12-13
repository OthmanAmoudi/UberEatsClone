//
//  TrackOrderViewController.swift
//  UberEats
//
//  Created by Othman Mashaab on 12/12/2017.
//  Copyright © 2017 Othman Mashaab. All rights reserved.
//

import UIKit
import MapKit

class TrackOrderViewController:UIViewController {
    
    @IBOutlet weak var mapView : MKMapView!
    @IBOutlet weak var containerView : UIView!
    @IBOutlet weak var progressView : UIView!
    @IBOutlet weak var restaurantLabel : UILabel!
    @IBOutlet weak var statusLabel : UILabel!
    @IBOutlet weak var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }

}

extension TrackOrderViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackItemCell", for: indexPath)
        return cell
        
    }
}
