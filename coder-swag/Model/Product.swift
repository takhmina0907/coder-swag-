//
//  Product.swift
//  coder-swag
//
//  Created by Takhmina Talipova on 7/21/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import Foundation
struct Product {
    private (set) public var title: String
    private (set) public var price: String
    private (set) public var imageName: String
    //initilaze our variables
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
