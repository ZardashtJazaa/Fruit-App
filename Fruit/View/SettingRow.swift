//
//  SettingRow.swift
//  Fruit
//
//  Created by Zardasht on 7/29/22.
//

import SwiftUI

struct SettingRow: View {
    //MARK: Properety
    var name:String
    var content:String? = nil
    var linkLabel: String? = nil
    var destinations:String? = nil
    
    //MARK: Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack {
                Text(name).foregroundColor(.secondary)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && destinations != nil {
                    Link(linkLabel! , destination: URL(string: "https://\(destinations!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else{
                    
                    EmptyView()
                }
            }
        }//HStack
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRow(name: "Developer", content: "Zardasht")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingRow(name: "GitHub",linkLabel: "GitHubLink" , destinations: "https://github.com/ZardashtJazaa?tab=repositories")
                .previewLayout(.fixed(width: 375, height: 60))
                .preferredColorScheme(.dark)
                .padding()
        }
            
    }
}
