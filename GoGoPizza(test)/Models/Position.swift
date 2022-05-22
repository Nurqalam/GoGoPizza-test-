//
//  Position.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 22.05.2022.
//

import Foundation


struct Position {
    
    var id: String
    var product: Product
    var count: Int
    
    var cost: Int {
        return (Int(product.price) ?? 1) * self.count
    }
    
}
