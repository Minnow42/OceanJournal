//
//  ContentView.swift
//  OceanTheme
//
//  Created by Kellie Stein on 5/19/21.
//

import SwiftUI
let aeroBlue = UIColor(red: 189/255, green: 239/255, blue: 214/255, alpha: 1)
let lightSlateGray = UIColor(red:110/255, green: 136/255, blue: 152/255, alpha: 1)

struct ContentView: View {
    var body: some View {
        TabView {
            DreamList()
                .tabItem {
                    Label("Dreams", systemImage: "note.text")
                }
            WriteView()
                .tabItem {
                    Label("Write", systemImage: "pencil")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
