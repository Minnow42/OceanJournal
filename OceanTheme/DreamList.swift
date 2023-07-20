//
//  DreamList.swift
//  OceanJournal
//
//  Created by Kellie Stein on 7/19/23.
//

import SwiftUI

struct DreamList: View {
    init() {
        UITableView.appearance().backgroundColor = lightSlateGray
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: lightSlateGray, .backgroundColor: aeroBlue]
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: lightSlateGray]
        UITabBar.appearance().barTintColor = aeroBlue
        // UITableView.appearance().backgroundColor = .clear
        //UITableViewCell.appearance().backgroundColor = .clear
        //UINavigationBar.appearance().backgroundColor = aeroBlue
    }

    var dreams: [DreamItem] = [
        DreamItem(dreamItemTitle: "Dream Number 1", dreamItemDesc: "This is a description of the first dream."),
        DreamItem(dreamItemTitle: "Dream Number 2", dreamItemDesc: "This is a description of the second dream."),
        DreamItem(dreamItemTitle: "Dream Number 3", dreamItemDesc: "This is a description of the second dream.")
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("AeroBlue").ignoresSafeArea(.all, edges: .top)
                //Rectangle().foregroundColor(Color("LightSlateGray"))
                
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
                        
                    }
                    .foregroundColor(Color("LightSlateGray"))
                    .environment(\.defaultMinListRowHeight, 70)
                    .listStyle(InsetGroupedListStyle())
                    .navigationBarTitle("Dream Journal")
                }
                
            }

        }
    }
}

struct DreamList_Previews: PreviewProvider {
    static var previews: some View {
        DreamList()
    }
}
