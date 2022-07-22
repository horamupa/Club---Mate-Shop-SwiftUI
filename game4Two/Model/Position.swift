//
//  Position.swift
//  game4Two
//
//  Created by MM on 22.07.2022.
//

import Foundation

struct Position: Identifiable {
    
    var id: String
    var product: Product
    var count: Int
    var cost:Int {
        product.price * count
    }
    
}
