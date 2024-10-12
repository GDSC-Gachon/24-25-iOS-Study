//
//  ContentView.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMainView = false
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            if showMainView {
                VStack {
                    Text("Spotify!")
                        .font(.spotify(.title_1))
                        .foregroundColor(Color.green)
                }
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
    ContentView()
}
