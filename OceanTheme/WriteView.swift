//
//  WriteView.swift
//  OceanJournal
//
//  Created by Kellie Stein on 7/19/23.
//

import SwiftUI

struct WriteView: View {
    @State private var newDream: String = ""
    @State private var newTitle: String = ""
    @State private var newTags: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("AeroBlue").ignoresSafeArea(.all, edges: .top)
                
                Rectangle()
                    .foregroundColor(Color("LightSlateGray"))
                
                VStack(alignment: .leading) {
                    Spacer()
                    Text("Describe your dream:")
                        .foregroundColor(Color("AeroBlue"))
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                        .padding(.leading)
                    Spacer()
                    
                    HStack {
                        Spacer()
                        TextEditor(text: $newDream)
                            .foregroundColor(Color("AeroBlue"))
                            .padding(.leading)
                            .padding(.trailing)
                            .overlay(RoundedRectangle(cornerRadius: 25).strokeBorder(Color("AeroBlue"), lineWidth: 3))
                        Spacer()
                    }
                    Text("Title")
                        .foregroundColor(Color("AeroBlue"))
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                        .padding(.leading)
                    
                    HStack {
                        Spacer()
                        TextField("", text: $newTitle)
                            .foregroundColor(Color("LightSlateGray"))
                            .font(.system(.title, design: .rounded))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 25).strokeBorder(Color("AeroBlue"), lineWidth: 3))
                        Spacer()
                    }
                    Text("Tags")
                        .foregroundColor(Color("AeroBlue"))
                        .fontWeight(.bold)
                        .font(.system(.title, design: .rounded))
                        .padding(.leading)
                    
                    HStack {
                        Spacer()
                        TextField("", text: $newTags)
                            .foregroundColor(Color("LightSlateGray"))
                            .font(.system(.title, design: .rounded))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 25).strokeBorder(Color("AeroBlue"), lineWidth: 3))
                        Spacer()
                    }
                    
                    Spacer()
                }.navigationBarTitle("New Dream")
                .navigationBarItems(trailing: Button("Done") {
                        // Action here
                    })
            }
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
