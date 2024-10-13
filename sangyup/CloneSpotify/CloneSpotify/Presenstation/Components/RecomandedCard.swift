//
//  RecomandedCard.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/13/24.
//

import SwiftUI

struct RecomandedCard: View {
    let musicImage : String?
    let title : String?
    
    init(musicImage: String? = "RecmdImg", title: String? = "I Wanna Be Yours") {
        self.musicImage = musicImage
        self.title = title
    }
    
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(width: 358, height: 142)
            .cornerRadius(8)
            .overlay(HStack{
                Image(musicImage ?? "RecmdImg")
                    .resizable()
                    .frame(width: 142, height: 142)
                    .clipShape(RoundedCorners(tl: 8, tr: 0, bl: 8, br: 0)) // 왼쪽 상단, 오른쪽 하단만 둥글게 처리
                VStack(alignment: .leading, spacing: 3) {
                    Text(title ?? "I Wanna Be Yours")
                        .foregroundColor(.white)
                        .font(.spotify(.body_6B))
                    Text("Single • Arctic Monkeys")
                        .foregroundColor(.white)
                        .font(.spotify(.body_6R))                            
                    Spacer()
                    
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 24, height: 24)
                            
                        }
                        Spacer()
                        Button(action: {}) {
                            Image("Play")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.white)
                        }
                    }
                    
                    .padding(.bottom, 16)
                    .padding(.trailing, 16)
                    
                }
                .padding(.leading, 16)
                .padding(.top, 16)
                
            })
        
    }
    
}
#Preview {
    RecomandedCard()
}
