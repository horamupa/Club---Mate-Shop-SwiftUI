//
//  CatalogViewModel.swift
//  game4Two
//
//  Created by MM on 20.07.2022.
//

import Foundation


class CatalogViewModel: ObservableObject {
    
    static let shared = CatalogViewModel()
    
    var reccomendedProducts = [
        Product(id: "1", title: "Club-Mate", imageURL: "not yeat", price: 350, description: "Самый божественно канонический клаб мате"),
        Product(id: "2", title: "Cola-Mate", imageURL: "not yeat", price: 350, description: "Самый божественно канонический клаб мате"),
        Product(id: "3", title: "Mate-Cristmas", imageURL: "not yeat", price: 350, description: "Самый божественно канонический клаб мате"),
        Product(id: "4", title: "Club-Mate ICE", imageURL: "not yeat", price: 350, description: "Самый божественно канонический клаб мате"),
        Product(id: "5", title: "Club-Mate Granat", imageURL: "not yeat", price: 350, description: "Самый божественно канонический клаб мате")
    ]
    
    var products = [
        Product(id: "6", title: "Club-Mate regular", imageURL: "not yeat", price: 350, description: "Самый бодественно канонический клаб мате"),
        Product(id: "7", title: "Club-Mate regular", imageURL: "not yeat", price: 350, description: "Самый бодественно канонический клаб мате"),
        Product(id: "8", title: "Club-Mate regular", imageURL: "not yeat", price: 350, description: "Самый бодественно канонический клаб мате"),
        Product(id: "9", title: "Club-Mate regular", imageURL: "not yeat", price: 350, description: "Самый бодественно канонический клаб мате"),
    ]
}
