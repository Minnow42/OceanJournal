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
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: lightSlateGray, .backgroundColor: aeroBlue]
        UINavigationBar.appearance().backgroundColor = aeroBlue
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: lightSlateGray]
        UITabBar.appearance().barTintColor = aeroBlue
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
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
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

struct DreamList: View {

    var dreams: [DreamItem] = [
        DreamItem(dreamItemTitle: "Dream Number 1", dreamItemDesc: "This is a description of the first dream."),
        DreamItem(dreamItemTitle: "Dream Number 2", dreamItemDesc: "This is a description of the second dream."),
        DreamItem(dreamItemTitle: "Dream Number 3", dreamItemDesc: "This is a description of the second dream.")
    ]
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("AeroBlue").ignoresSafeArea(.all, edges: .top)
                
                Rectangle()
                    .foregroundColor(Color("LightSlateGray"))
                
                VStack {
                    Spacer()
                    List() {
                        NavigationLink(
                            destination: DreamView(),
                            label: {
                                DreamRowView(dream: DreamItem(dreamItemTitle: "Weird Storm", dreamItemDesc: "I am inside this building but I have no idea w..."))
                            }).listRowBackground(Color("AeroBlue"))
                        
                        NavigationLink(
                            destination: DreamView(),
                            label: {
                                DreamRowView(dream: DreamItem(dreamItemTitle: "Flying Away", dreamItemDesc: "I’m on a spaceship of some kind. It’s going t..."))
                            }).listRowBackground(Color("AeroBlue"))
                        
                        NavigationLink(
                            destination: DreamView(),
                            label: {
                                DreamRowView(dream: DreamItem(dreamItemTitle: "Fireworks", dreamItemDesc: "It’s nighttime in the city. I don’t know what ci..."))
                            }).listRowBackground(Color("AeroBlue"))
                        
                        NavigationLink(
                            destination: DreamView(),
                            label: {
                                DreamRowView(dream: DreamItem(dreamItemTitle: "Wide Open Ocean", dreamItemDesc: "I’m standing in beautiful blue water. There’s ..."))
                            }).listRowBackground(Color("AeroBlue"))
                        
                        NavigationLink(
                            destination: DreamView(),
                            label: {
                                DreamRowView(dream: DreamItem(dreamItemTitle: "Really Scary", dreamItemDesc: "This one really freaked me out. I am in an ab..."))
                            }).listRowBackground(Color("AeroBlue"))
                        
                    }.foregroundColor(Color("LightSlateGray"))
                    .listRowBackground(Color("AeroBlue"))
                    .environment(\.defaultMinListRowHeight, 70)
                    .listStyle(InsetGroupedListStyle())
                    .navigationBarTitle("Dream Journal")
                }
                
            }

        }
    }
}

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

struct Settings: View {
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
                                ForEach(0 ..< langs.count) {
                                    Text(self.langs[$0]).tag($0)
                                }
                            }
                        }
                        
                        Picker(selection: $iconIndex, label: Text("Icon")) {
                            List {
                                ForEach(0 ..< icons.count) {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
