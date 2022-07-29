//
//  CardView.swift
//  Fruit
//
//  Created by Zardasht on 7/27/22.
//

import SwiftUI

struct CardView: View {
    //Properety
    
    @State private var isAnimation: Bool = false
    var fruit : Fruit
    //Body
    var body: some View {
        ZStack {
            
            VStack {
                //Fruit - Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1 : 0.6)
                
                
            //Title - Image
                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.2), radius: 2, x: 2, y: 2)
                    
                
                    
            //Descriptions - Image
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal , 16)
                    .frame(maxWidth:480)
            //StartButtonView
                StartButton()
                   
                    
                
            }//VStack
        }//:ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors)
                                                                , startPoint: .top
                                                                , endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimation = true
            }
        }
    }
}


//MARK: Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
