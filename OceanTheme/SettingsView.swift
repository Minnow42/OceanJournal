//
//  SettingsView.swift
//  OceanJournal
//
//  Created by Kellie Stein on 7/19/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var langIndex = 0
    var langs = ["English", "Russian", "Kazakh", "Mandarin", "Cantonese"]
    
    @State private var iconIndex = 0
    var icons = ["SleepFoam", "Light Slate", "Black Foam"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("AeroBlue").ignoresSafeArea(.all, edges: .top)
                
                Rectangle()
                    .foregroundColor(Color("LightSlateGray"))
                
                VStack {
                    Spacer()
                    Form {
                        Picker(selection: $langIndex, label: Text("Language")) {
                            List {
                                ForEach(0 ..< 5) {
                                    Text(self.langs[$0]).tag($0)
                                }
                            }
                        }
                        
                        Picker(selection: $iconIndex, label: Text("Icon")) {
                            List {
                                ForEach(0 ..< 3) {
                                    Text(self.icons[$0]).tag($0)
                                }
                            }
                        }
                    }
                    .foregroundColor(Color("LightSlateGray"))
                    .navigationBarTitle("Settings")
                
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
