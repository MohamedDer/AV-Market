//
//  DataFetcher.swift
//  AV Market
//
//  Created by MTS 4 on 7/31/18.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class DataFetcher: NSObject {

    // MARK : Fetch data from the API and parsing the JSON response to an array of Ad s
    func fetchAds(completion : @escaping ([Ad])->()) -> Void {
        let header: HTTPHeaders = ["Accept": "application/json", "Content-Type": "application/json", "lang": "fr"]
        Alamofire.request("https://services.avito.ma/api/v1/ads", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: header).responseData { (resData) -> Void in
            var ads = [Ad]()
            let jsonData = JSON(resData.result.value!)
            for i in 0...jsonData["ads"].count-1 {
                let adJSON = jsonData["ads"][i]
                ads.append(Ad(JSONString: adJSON.description)!)
            }
            completion(ads)
        }
    }
}
