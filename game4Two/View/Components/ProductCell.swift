//
//  ProductCell.swift
//  game4Two
//
//  Created by MM on 20.07.2022.
//

import SwiftUI

struct ProductCell: View {
    var product: Product
    
    var body: some View {
        VStack {
            Image("mateDF")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45 )
                .clipped()
                .cornerRadius(18)
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-semibold", size: 17))
                    .padding(.bottom, 4)
                Spacer()
                    
                Text("\(product.price) ₽")
                    .font(.custom("AvenirNext-bold", size: 17))
                    .padding(.bottom, 6)
            }
            .padding(.horizontal, 8)
        }.frame(width: screen.width * 0.45, height: screen.width * 0.65, alignment: .center)
            .background(.white)
            .cornerRadius(16)
            .shadow(radius: 8)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "1", title: "Club-Mate", imageURL: "not yeat", price: 350, description: "Самый божественно канонический клаб мате"))
    }
}
