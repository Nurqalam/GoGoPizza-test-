//
//  MainTabBar.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 21.05.2022.
//

import SwiftUI

struct MainTabBar: View {
    var body: some View {
        
        TabView {
            NavigationView {
                CatalogView()
            }
                .tabItem {
                    VStack {
                        Image(systemName: "greetingcard")
                        Text("Каталог")
                    }
                }

            
            CartView(viewModel: CartViewModel())
                .tabItem {
                    VStack {
                        Image(systemName: "cart")
                        Text("Корзина")
                    }
                }
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Профиль")
                    }
                }
        }
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
