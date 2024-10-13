//
//  ContentView.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/8/24.
//

import SwiftUI

struct RootView: View {
    
    @State private var showMainView = false
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            if showMainView {
                TabView {
                    HomepageView()
                        .tabItem {
                            Image("ico-32-home")
                            Text("Home")
                        }
                    HomepageView()
                        .tabItem {
                            Image("ico-32-search")
                            Text("Serch")
                        }
                    HomepageView()
                        .tabItem {
                            Image("ico-32-library")
                            Text("Your library")
                        }
                }
                .onAppear{setupTabBarAppearance()}
            } else {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation {
                                showMainView = true
                            }
                        }
                    }
            }
        }
        
    }
}

#Preview {
    RootView()
}
