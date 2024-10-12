//
//  SplashView.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/8/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("spotifyLogo")
                    .resizable()
                    .frame(width: 139.7 , height: 139.99)
            }
        }
    }
}
