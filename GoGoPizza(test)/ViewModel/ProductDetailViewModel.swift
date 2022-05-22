//
//  ProductDetailViewModel.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 22.05.2022.
//

import Foundation


class ProductDetailViewModel: ObservableObject {
    
    @Published var product: Product
    @Published var sizes = ["Маленькая", "Средняя", "Большая"]
    @Published var count = 0
    
    init(product: Product) {
        self.product = product
    }
    
    func getPrice(size: String) -> String {
        guard let doublePrice = Double(product.price) else { return "1" }
        
        switch size {
        case "Маленькая": return product.price
            
        case "Средняя": return String("\(Int(doublePrice * 1.25))")
            
        case "Большая": return String("\(Int(doublePrice * 1.5))")
        
        default: return "0"
        }
    }
}
