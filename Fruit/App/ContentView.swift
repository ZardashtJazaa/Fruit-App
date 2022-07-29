//
//  ContentView.swift
//  Fruit
//
//  Created by Zardasht on 7/27/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properety
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSetting: Bool = false
    
    var body: some View {
        NavigationView {
            
            List {
                
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination:FruitDetailView(fruit: fruit)) {
                    FruitsRowView(fruit: fruit)
                        .padding(.vertical ,4)
                    
                    }//NavigationLink   
                }
                
            }//:List
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action:{
                        isShowingSetting = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSetting, content: {
                        FruitSettingView()
                    })
            )
            
        }//:Navigations
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.dark)
    }
}
