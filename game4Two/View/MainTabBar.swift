//
//  MainTabBar.swift
//  game4Two
//
//  Created by MM on 20.07.2022.
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
                        Image(systemName: "takeoutbag.and.cup.and.straw")
                        Text("Каталог")
                    }
                }
            
            NavigationView {
                CartView(viewModel: CartViewModel.shared)
                
            }
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
