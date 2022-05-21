//
//  CatalogViewModel.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 21.05.2022.
//

import Foundation


class CatalogViewModel: ObservableObject {
    
    static let shared = CatalogViewModel()
    
    var popularProducts = [
        Product(id: "1",
                                     title: "Маргарита Африканская",
                                     imageUrl: "Not found",
                                     price: 450,
                                     descript: "Обычная немножко измененная Маргарита"),
        Product(id: "2",
                                     title: "Маргарита",
                                     imageUrl: "Not found",
                                     price: 350,
                                     descript: "Обычная пицца с сыром и помидорами"),
        Product(id: "3",
                                     title: "Пепперони",
                                     imageUrl: "Not found",
                                     price: 550,
                                     descript: "Обычная пицца"),
        Product(id: "4",
                                     title: "Гавайская",
                                     imageUrl: "Not found",
                                     price: 400,
                                     descript: "Обычная пицца"),
        Product(id: "5",
                                     title: "Диабло-Мексика",
                                     imageUrl: "Not found",
                                     price: 620,
                                     descript: "Обычная пицца")

    ]
    
    var pizzas = [
        Product(id: "1",
                                     title: "Маргарита Африканская",
                                     imageUrl: "Not found",
                                     price: 450,
                                     descript: "Обычная немножко измененная Маргарита"),
        Product(id: "2",
                                     title: "Маргарита",
                                     imageUrl: "Not found",
                                     price: 350,
                                     descript: "Обычная пицца с сыром и помидорами"),
        Product(id: "3",
                                     title: "Пепперони",
                                     imageUrl: "Not found",
                                     price: 550,
                                     descript: "Обычная пицца"),
        Product(id: "4",
                                     title: "Гавайская",
                                     imageUrl: "Not found",
                                     price: 400,
                                     descript: "Обычная пицца"),
        Product(id: "5",
                                     title: "Диабло-Мексика",
                                     imageUrl: "Not found",
                                     price: 620,
                                     descript: "Обычная пицца")

    ]

    
}
