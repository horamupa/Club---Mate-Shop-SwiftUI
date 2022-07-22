//
//  PositionCell.swift
//  game4Two
//
//  Created by MM on 22.07.2022.
//

import SwiftUI

struct PositionCell: View {
    
    var position: Position
    
    var body: some View {
        HStack {
            Image("mateDF")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: 130)
    
            Text(position.product.title)
                .frame(alignment: .leading)
                
            Spacer()
            Text("\(position.count) шт")
            
            Text("\(position.cost) ₽")
                .frame(maxWidth: 80, alignment: .trailing)
                
        }.padding(.trailing).font(.title2)
        
    }
}

struct PositionCell_Previews: PreviewProvider {
    static var previews: some View {
        PositionCell(position: Position(id: UUID().uuidString, product: Product(id: "1", title: "Club-Mate", imageURL: "mateDF", price: 350, description: "Самый божественно канонический клаб мате"), count: 3))
    }
}
