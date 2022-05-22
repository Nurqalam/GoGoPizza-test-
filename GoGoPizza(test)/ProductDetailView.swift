//
//  ProductDetailView.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 21.05.2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    var product: Product
    
    var body: some View {
        Text("\(product.title)!")
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: "1",
                                           title: "Маргарита Африканская",
                                           imageUrl: "Not found",
                                           price: String(2450),
                                           descript: "Обычная немножко измененная Маргарита"))
    }
}
