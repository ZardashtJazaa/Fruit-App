//
//  SourceLinkView.swift
//  Fruit
//
//  Created by Zardasht on 7/28/22.
//

import SwiftUI

struct SourceLinkView: View {
    
    //MARK: Body
    
    var body: some View {
        GroupBox {
            HStack {
                Text("Source Content")
                Spacer()
                Link("Wikipedia" , destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//HStack
            .font(.footnote)
        }//GroupBox
    }
}

//MARK: Preview
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
