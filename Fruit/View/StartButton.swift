//
//  StartButton.swift
//  Fruit
//
//  Created by Zardasht on 7/27/22.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing:8) {
                
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
               
            }//HStack
            .padding(.horizontal, 16)
            .padding(.vertical , 10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
            
        }//:Button
        .accentColor(Color.white)
        }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        
    }
}
