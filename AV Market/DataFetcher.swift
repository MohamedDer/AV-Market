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

    func fetchAds(completion : @escaping ([Ad])->()) -> Void {
        let header: HTTPHeaders = ["Accept": "application/json", "Content-Type": "application/json", "lang": "fr"]
        Alamofire.request("https://services.avito.ma/api/v1/ads", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: header).responseData { (resData) -> Void in
            print(resData.result.value)
//            var ads = [Ad]()
//            let jsonData = JSON(resData.result.value!)
//            for i in 0...jsonData.count-1 {
//                let userJSON = jsonData[i]
//                print(userJSON)
//                ads.append(Ad(JSONString: userJSON.description)!)
//            }
//            completion(ads)
        }
        
    }
    
}
