//
//  FruitDetailView.swift
//  Fruit
//
//  Created by Zardasht on 7/28/22.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: Properety
    var fruit: Fruit
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical , showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    //Header
                    FruitHaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrient
                        FruitNutrientsView(fruit: fruit)
                        //Subheading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        //Descriptons
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView()
                            .padding(.bottom , 40)
                            .padding(.top,10)
                            
                    }//VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth:640,alignment: .center)
                }//VStack
                .navigationBarTitle(fruit.title,displayMode:.inline)
                .navigationBarHidden(true)
            }//ScrollView
            .edgesIgnoringSafeArea(.top)
        }//NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
        
        
        
        
    }
}


//MARK: Preview

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
            .previewInterfaceOrientation(.portrait)
    }
}
