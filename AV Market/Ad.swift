//
//  Ad.swift
//  AV Market
//
//  Created by MTS 4 on 7/31/18.
//  Copyright © 2018 Mohamed Derkaoui. All rights reserved.
//

import Foundation
import ObjectMapper



class Ad: Mappable {

    
    var imageLink: String?
    var title: String?
    var price: Int?
    
    var ownerName: String?
    var ownerPhone: String?
    
    init(_ imageLink: String?, _ title: String?, _ price: Int?){
        self.imageLink = imageLink
        self.title = title
        self.price = price
    }
    
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        imageLink <- map["image"]
        title <- map["title"]
        price <- map["price"]
    }
}

