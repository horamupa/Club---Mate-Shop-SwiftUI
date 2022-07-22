//
//  CartView.swift
//  game4Two
//
//  Created by MM on 20.07.2022.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel: CartViewModel
    
    var body: some View {
        
        VStack {
            List(viewModel.positions) { position in
                PositionCell(position: position)
                    .swipeActions(content: {
                        Button {
                            viewModel.positions.removeAll { pos in
                                pos.id == position.id
                            }
                        } label: {
                            Text("Удалить")
                        }.tint(.red)
                            
                        
                    })
            }
            
            .listStyle(.plain)
            .navigationTitle("Корзина")
            
            HStack {
                Text("Всего: \(viewModel.positions.count) позиций на")
                Text("\(viewModel.cost) ₽")
            }
            
            HStack {
                Button {
                    print("Cansel")
                } label: {
                    Text("Отмена")
                }
                
                Spacer()
                
                Button {
                    print("Cansel")
                } label: {
                    Text("Заказ")
                    
                }
                .frame(maxWidth: screen.width * 0.38, maxHeight: 60)
                .background(LinearGradient(colors: [.yellow, .orange], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(16)
                
                
            }
            //            .aspectRatio()
            .padding(.horizontal, 35)
            .padding()
            .foregroundColor(.black)
        }
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel.shared)
    }
}
