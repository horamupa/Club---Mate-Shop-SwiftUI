//
//  ProductDetailView.swift
//  game4Two
//
//  Created by MM on 20.07.2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    var viewModel: ProductDetailViewModel
//    var viewModelCart: CartViewModel
    
    @State private var volume = "0.33"
    @State private var count = 1
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            Image("mateDF")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: screen.width / 1.3)
            
            HStack{
            
                Text("\(viewModel.product.title)")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Text("\(viewModel.getPrice(volume: volume))")
                    .font(.title2)
                    .bold()
            }.padding(.horizontal, 20)
            
            Text("\(viewModel.product.description)").padding(.horizontal, 8)
            
            
            Stepper("Количество:    \(count)", value: $count, in: 0...10)
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
            
            
            Picker("Count", selection: $volume) {
                
                ForEach(viewModel.volume, id: \.self) {
                    Text($0)
                }
            
            }.pickerStyle(.segmented).padding()
            
            Button {
        
                var position = Position(id: UUID().uuidString, product: viewModel.product, count: count)
                
                position.product.price = viewModel.getPrice(volume: volume)
                
                CartViewModel.shared.addPosition(position)
                presentationMode.wrappedValue.dismiss()
                
            } label: {
                Text("To cart")
                    .foregroundColor(.black)
                    .font(.title2)
                    .padding()
                    .padding(.horizontal, 80)
                    .background(LinearGradient(colors: [.yellow,.orange], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(32)
                    
            }

        Spacer()
        }.padding()
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewModel: ProductDetailViewModel(product: Product(id: "1", title: "Club-Mate", imageURL: "not yeat", price: 350, description: "Самый божественно канонический клаб мате")))
    }
}
