//
//  ViewController.swift
//  AV Market
//
//  Created by MTS 4 on 7/31/18.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let df = DataFetcher()
        df.fetchAds { (result) in
            
        }

    }


}

