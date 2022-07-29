//
//  FruitApp.swift
//  Fruit
//
//  Created by Zardasht on 7/27/22.
//

import SwiftUI

@main
struct FruitApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
