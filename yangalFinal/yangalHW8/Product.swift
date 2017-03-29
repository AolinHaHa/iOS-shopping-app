//
//  Product.swift
//  yangalHW8
//
//  Created by Yang Aolin on 3/5/17.
//  Copyright © 2017 Aolin Yang. All rights reserved.
//

import Foundation


let products = [
    Product(name: "beef",
            type: .meat,
            shortDescription: "Fillet",
            longDescription: "Fillet- steak cut of beef taken from the smaller end of the tenderloin.",
            quantity:0,
            price: 2.5),
    
    Product(name: "Cat food",
            type: .pets,
            shortDescription: "Dry Cat Food",
            longDescription: "Purina® Cat Chow Complete Dry Cat Food - 16lb bag.",
            quantity:0,
            price: 1.5),
    Product(name: "Hammer",
            type: .tool,
            shortDescription: "Multi-Hammer",
            longDescription: "Apollo 9-in-1 Multi-Hammer - Assorted Colors.",
            quantity:0,
            price: 3.5),
    Product(name: "Lettuce",
            type: .vegetable,
            shortDescription: "Romaine Lettuce",
            longDescription: "Earthbound Farm Organic Easy Leaves Romaine Lettuce 7 oz",
            quantity:0,
            price: 5.5),
    
    Product(name: "Cat Tree",
            type: .pets,
            shortDescription: "Trixie Palamos Cat Tree",
            longDescription: "Trixie Palamos Cat Tree - Beige",
            quantity:0,
            price: 1.5),
    
    Product(name: "Super Glue",
            type: .tool,
            shortDescription: "Scotch® Super Glue",
            longDescription: "Scotch® Super Glue, Single Use - .017oz",
            quantity:0,
            price: 0.99),
    Product(name: "Edamame",
            type: .vegetable,
            shortDescription: "Woodstock Edamame",
            longDescription: "Woodstock Organic Whole Pod Edamame Vegetables 10 oz",
            quantity:0,
            price: 2.5),
    Product(name: "Chicken",
            type: .meat,
            shortDescription: "Chipotle Chicken",
            longDescription: "Oscar Mayer Bold Chipotle Chicken Lunch Meat 8 oz",
            quantity:0,
            price: 2.5),
    Product(name: "Glue Gun Refills",
            type: .tool,
            shortDescription: "Glue Gun Refills 30ct",
            longDescription: "Glue Gun Refills 30ct - up & up™",
            quantity:0,
            price: 5.4),
    Product(name: "Flea&Tick",
            type: .pets,
            shortDescription: "TPetArmor for Cats",
            longDescription: "PetArmor Plus Flea & Tick Application for Cats - 1.5lbs or Larger - 3ct",
            quantity:0,
            price: 1.2),
    
]

class Product{
    enum `Type`:  String {
        case meat = "meat"
        case tool = "tool"
        case pets = "pets"
        case vegetable = "vegetable"
    }
    var type:Type
    var name:String
    var shortDescription:String
    var longDescription:String
    var quantity:Int
    var price:Double
    init(name: String, type: Type, shortDescription: String, longDescription: String, quantity: Int, price: Double) {
        self.name = name
        self.type = type
        self.price = price
        self.quantity = quantity
        self.longDescription = longDescription
        self.shortDescription = shortDescription
    }
}
