//
//  FruitHaderView.swift
//  Fruit
//
//  Created by Zardasht on 7/28/22.
//

import SwiftUI

struct FruitHaderView: View {
    
    //MARK: Properety
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    //MARK: Body
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors ), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20) //for ipad screen
                .scaleEffect(isAnimating ?  1 : 0.6)
        }//:ZStack
        .frame(height:440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
}

//MARK: Preview
struct FruitHaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
            
    }
}
