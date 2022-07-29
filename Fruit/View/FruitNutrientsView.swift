//
//  FruitNutrientsView.swift
//  Fruit
//
//  Created by Zardasht on 7/28/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: Properety
    var fruit: Fruit
    let nutrients: [String] =  ["Energy","Sugar","Fat","Protien","Vitamins","Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count,id:\.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body))
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
       
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .preferredColorScheme(.dark)
            .padding()
    }
}
