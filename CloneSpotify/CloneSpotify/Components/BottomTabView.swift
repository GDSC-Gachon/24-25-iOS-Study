//
//  TabView.swift
//  CloneSpotify
//
//  Created by Lee Juwon on 10/14/24.
//

import SwiftUI

struct BottomTabView: View {
  @State private var selectedTab = 0
  
  var body: some View {
    TabView(selection: $selectedTab) {
      Text("Home Screen")
        .tabItem {
          Image(systemName: "house.fill")
          Text("Home")
        }
        .tag(0)
    
      Text("Search Screen")
        .tabItem {
          Image(systemName: "magnifyingglass")
          Text("Search")
        }
        .tag(1)
      
      Text("Your Library Screen")
        .tabItem {
          Image(systemName: "rectangle.stack.fill")
          Text("Your library")
        }
        .tag(2)
    }
  }
}

#Preview {
    BottomTabView()
}
