//
//  ProductDetailView.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 21.05.2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
    @State var size = "Маленькая"
    @State var count = 1
    
    
    var body: some View {
        
        VStack {
            VStack(alignment: .leading) {
                Image("pizzaPH")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 290)
                HStack {
                    Text("\(viewModel.product.title)!")
                        .font(.title2.bold())
                        Spacer()
                    Text("\(viewModel.getPrice(size: self.size)) \(Image(systemName: "tengesign.circle"))")
                        .font(.title2)
                }.padding(.horizontal)
                
                Text("\(viewModel.product.descript)")
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                
                HStack {
                    Stepper("Количество", value: $count, in: 1...10)
                    
                    Text("\(self.count)")
                        .padding(.leading, 32)
                }.padding(.horizontal)
                
                Picker("Размер пиццы", selection: $size) {
                    ForEach(viewModel.sizes, id: \.self) { item in
                        Text(item)
                    }
                }.pickerStyle(.segmented)
                    .padding()
                
            }
            Button {
                print("Добавить в корзину")
            } label: {
                Text("В корзину")
                    .padding()
                    .padding(.horizontal, 60)
                    .foregroundColor(Color("darkBrown"))
                    .font(.title3.bold())
                    .background(LinearGradient(colors: [Color("yellow"), Color("orange")],
                                               startPoint: .leading,
                                               endPoint: .trailing))
                    .cornerRadius(30)
            }
            
            Spacer()

        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewModel: ProductDetailViewModel(product: Product(id: "1",
                                                                             title: "Маргарита Африканская",
                                                                             imageUrl: "Not found",
                                                                             price: String(2450),
                                                                             descript: "Обычная немножко измененная Маргарита")))
    }
}
