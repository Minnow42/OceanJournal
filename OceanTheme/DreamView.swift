//
//  DreamView.swift
//  OceanTheme
//
//  Created by Kellie Stein on 5/19/21.
//

import SwiftUI

struct DreamView: View {
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    @State private var titleText: String = "Dream Title"
    @State private var dreamText: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    var body: some View {
        ZStack {
            Color("AeroBlue").ignoresSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color("LightSlateGray"))
            
            VStack(alignment: .leading) {
                Spacer()
//                Text("Description")
//                    .fontWeight(.bold)
//                    .font(.system(.largeTitle, design: .rounded))
//                    .foregroundColor(Color("AeroBlue"))
//                    .padding(.leading)
                
                TextEditor(text: $dreamText)
                    .foregroundColor(Color("AeroBlue"))
                    .background(Color("LightSlateGray"))
                    .padding(.leading)
                    .padding(.trailing)
                Spacer()
                
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        }.navigationBarTitle("Description")
        .navigationBarItems(trailing: Button("Save") {
            // Action here
        })
        
    }
}

struct DreamView_Previews: PreviewProvider {
    static var previews: some View {
        DreamView()
    }
}
