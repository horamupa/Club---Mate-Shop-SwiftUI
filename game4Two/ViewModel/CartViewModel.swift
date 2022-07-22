//
//  CartViewModel.swift
//  game4Two
//
//  Created by MM on 22.07.2022.
//

import Foundation


class CartViewModel:ObservableObject {
    
    static let shared = CartViewModel()
    
    @Published var positions = [Position]()
    
    private init() { }
    
    var cost: Int {
        
        var sum = 0
        
        for pos in positions {
            sum += pos.cost
        }
        
        return sum
        
    }
    
    func addPosition (_ position: Position) {
        
        positions.append(position)
        
    }
    
//    func summ (positions: positions) -> Int {
//
//        var sum = 0
//
//        for os in positions {
//            sum += position.cost
//        }
//
//        return sum
//
//    }
}


