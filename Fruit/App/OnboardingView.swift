//
//  OnboardingVoew.swift
//  Fruit
//
//  Created by Zardasht on 7/27/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruit: [Fruit] = fruitsData
    
    var body: some View {
        
        
        TabView {
            ForEach(fruit[0...5]) { card in
               CardView(fruit: card)
            }//loop
            
        }//tap
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
      
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
