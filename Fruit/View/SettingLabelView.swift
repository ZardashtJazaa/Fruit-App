//
//  SettingLabelView.swift
//  Fruit
//
//  Created by Zardasht on 7/29/22.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelName: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelName.uppercased())
            Spacer()
            Image(systemName: labelImage)
         }//HStack
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelName: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
