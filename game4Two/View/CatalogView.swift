//
//  CatalogView.swift
//  game4Two
//
//  Created by MM on 20.07.2022.
//

import SwiftUI

struct CatalogView: View {
    var layout = [GridItem(.adaptive(minimum: screen.width / 2.4 ))]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            Section("Popular") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layout, spacing: 12) {
                        ForEach(CatalogViewModel.shared.reccomendedProducts, id: \.id) { item in
                            NavigationLink {
                            
                                let viewModel = ProductDetailViewModel(product: item)
                                
                                ProductDetailView(viewModel: viewModel)
                            } label: {
                                ProductCell(product: item)
                            }.foregroundColor(.black)
                        }
                    }.padding()
                }
            }
            
            Section("Catalog") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layout) {
                        ForEach(CatalogViewModel.shared.products, id: \.id) { item in
                            NavigationLink {
                            
                                let viewModel2 = ProductDetailViewModel(product: item)
                                
                                ProductDetailView(viewModel: viewModel2)
                            } label: {
                                ProductCell(product: item)
                            }.foregroundColor(.black)

                            
                                
                            
                        }
                    }.padding()
                }
            }
        }.navigationBarHidden(true)
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
