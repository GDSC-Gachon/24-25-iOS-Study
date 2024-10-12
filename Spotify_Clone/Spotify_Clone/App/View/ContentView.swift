//
//  ContentView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("1")
                .tabItem {
                    Image("HomeTab")

                    Text("Home")
                        .font(Font.customFont(.body7_regular))
                        .foregroundColor(selectedTab == 0 ? Color.iconPrimary : Color.iconSecondary)
                }
                .tag(0)
            
            Text("2")
                .tabItem {
                    Image("SearchTab")

                    Text("Search")
                        .font(Font.customFont(.body7_regular))
                        .foregroundColor(selectedTab == 1 ? Color.iconPrimary : Color.iconSecondary)
                }
                .tag(1)
            
            Text("3")
                .tabItem {
                    Image("LibraryTab")

                    Text("Your library")
                        .font(Font.customFont(.body7_regular))
                        .foregroundColor(selectedTab == 2 ? Color.iconPrimary : Color.iconSecondary)
                }
                .tag(2)
        }
        .accentColor(Color.iconPrimary)
    }
}

#Preview {
    ContentView()
}
