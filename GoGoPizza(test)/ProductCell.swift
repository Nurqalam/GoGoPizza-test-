//
//  ProductCell.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 21.05.2022.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    let tengeImg = UIImage(systemName: "tengesign.circle")
    
    var body: some View {
        
        VStack(spacing: 2) {
            Image("pizzaPH")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45)
                .clipped()
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-regular", size: 13))
                    .frame(width: 100, height: 36, alignment: .leading)
                Text("\(product.price)\(Image(systemName: "tengesign.circle"))")
                    .font(.custom("AvenirNext-bold", size: 15))
            }
            .padding(.horizontal, 6)
            .padding(.bottom, 6)
        }.frame(width: screen.width * 0.45,
                height: screen.width * 0.55)
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: 4)
        .padding(.vertical, 6)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1",
                                     title: "Маргарита Африканская",
                                     imageUrl: "Not found",
                                     price: String(2450),
                                     descript: "Обычная немножко измененная Маргарита"))
    }
}
