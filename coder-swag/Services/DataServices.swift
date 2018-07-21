//
//  DataServices.swift
//  coder-swag
//
//  Created by Takhmina Talipova on 7/21/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    //first of all create a model!
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")

    ]
    
    private let hoodies = [
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo T-Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Badge Shirt Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo T-Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle-mode Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Logo T-Shirt Studio", price: "$20", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats()->[Product]{
        return hats
    }
    
    func getHoodies()->[Product]{
        return hoodies
    }
    
    func getShirts()->[Product]{
        return shirts
    }
    
    func getDigitalGoods()->[Product]{
        return digitalGoods
    }
    
}
