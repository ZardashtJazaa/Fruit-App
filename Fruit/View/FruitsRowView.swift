//
//  FruitsRowView.swift
//  Fruit
//
//  Created by Zardasht on 7/28/22.
//

import SwiftUI

struct FruitsRowView: View {
    //MARK: Properety
    var fruit: Fruit
    
    var body: some View {
        
        HStack {
            //Image
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color:Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                    )
                .cornerRadius(8)
                
            VStack(alignment:.leading,spacing:5) {
                
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }//:VStack
            
        }//:HStack
        
    }
}
//MARK: Preview
struct FruitsRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
