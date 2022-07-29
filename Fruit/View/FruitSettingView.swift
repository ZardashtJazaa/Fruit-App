//
//  FruitSettingView.swift
//  Fruit
//
//  Created by Zardasht on 7/29/22.
//

import SwiftUI

struct FruitSettingView: View {

//MARK: Properety
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
//MARK: Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(spacing:20) {
                    //Sheet 1
                    GroupBox(label: SettingLabelView(labelName: "Fructus", labelImage: "info.circle")) {
                        
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center , spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    }
                    //Sheet 2
                    GroupBox(
                        label: SettingLabelView(labelName: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical,4)
                        
                        Text("If you wish. you can restart the applications by toggle the switch int this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            
                            }
                            
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8,style: .continuous))
                        )
                    }//GroupBox
                    
                    
                    //Sheet 3
                    GroupBox(label: HStack {
                        Text("APPLICATION")
                        Spacer()
                        Image(systemName: "apps.iphone")
                    }) {
                        SettingRow(name: "Developer",content: "Zardasht")
                        SettingRow(name: "Designer",content: "Zardasht")
                        SettingRow(name: "Compatabilty", content: "IOS 15.5")
                        SettingRow(name: "GitHub", linkLabel: "Zardasht/Github",destinations: "github.com/ZardashtJazaa")
                        SettingRow(name: "LinkedIn", linkLabel: "Zardasht/jaza", destinations: "www.linkedin.com/in/zardasht-jaza-34b750202")
                        SettingRow(name: "SwiftUI" , content: "3.0")
                        SettingRow(name: "Version" , content: "1.1.0")
                        
                    }//GroupBox
                    
                    
                    
               
                }
                .navigationTitle("Seetting")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//:ScollView
            
            
        }//:Navigation
        
    }
}

//MARK: Preview
struct FruitSettingView_Previews: PreviewProvider {
    static var previews: some View {
        FruitSettingView()
            .preferredColorScheme(.dark)
            
    }
}
