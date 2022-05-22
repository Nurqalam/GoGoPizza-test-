//
//  CartViewModel.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 22.05.2022.
//

import Foundation


class CartViewModel: ObservableObject {
    
    @Published var positions = [Position]()
    
    func addPosition(_ position: Position) {
        
        self.positions.append(position)
        
    }
    
}
