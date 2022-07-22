//
//  ProductDetailVievModel.swift
//  game4Two
//
//  Created by MM on 20.07.2022.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    

    @Published var product: Product
    @Published var volume:[String] = ["0.33", "Box size"]
    
    
    init(product: Product) {
        self.product = product
    }
    
    func getPrice(volume: String) -> Int {
        switch volume {
        case "0.33":
            return product.price
        case "Box size":
            return product.price * 12
        default: return 0
        }
    }
    
}


