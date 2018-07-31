//
//  ViewController.swift
//  AV Market
//
//  Created by MTS 4 on 7/31/18.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UITableViewController {
    
    var adsArray: [Ad]?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = UIColor.black

        let dataFetcher = DataFetcher()
        dataFetcher.fetchAds { ads in
            self.adsArray = ads
            self.tableView.reloadData()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.adsArray?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "itemCell") as! itemTableViewCell
        cell.titleLabel.text = self.adsArray?[indexPath.row].title
        if let price = self.adsArray?[indexPath.row].price {
            cell.priceLabel.text =   " \(price) DH"
        } else {
            cell.priceLabel.text = "  -  "
        }
        
        let url = URL(string: adsArray?[indexPath.row].imageLink ?? "https://i1.wp.com/smarktic.com/wp-content/uploads/2018/04/avito-logo.jpg?ssl=1")
        cell.adImage?.kf.setImage(with: url)

        cell.selectionStyle = .none
        return cell
    }


}

