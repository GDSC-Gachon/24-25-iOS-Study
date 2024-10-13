//
//  GridCard.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/13/24.
//

import SwiftUI

struct GridCard: View {
    let albumImg : [String]
    let albumTitles : [String]
    
    init(cardImg: [String] = ["CardImg", "CardImg", "CardImg", "CardImg", "CardImg", "CardImg"],
         albumTitles: [String] = ["OK Computer", "Govinda", "The Last Dinner Party", "The Cure", "Playlist Viper", "Guts (spilled)"]) {
        self.albumImg = cardImg
        self.albumTitles = albumTitles
    }
    
    
    var body: some View {
        // 리스트 섹션
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
            ForEach(Array(albumTitles.enumerated()), id: \.element) { index, title in
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 175, height: 56)
                    .cornerRadius(4)
                    .overlay(
                        HStack{
                            Image(albumImg[index])
                                .resizable()
                                .frame(width: 56, height: 56)
                                .clipShape(RoundedCorners(tl: 4, tr: 0, bl: 4, br: 0)) // 왼쪽 상단, 오른쪽 하단만 둥글게 처리
                            
                            Text(title)
                                .foregroundColor(.white)
                                .padding(.leading,8)
                                .font(.spotify(.body_7B))
                            Spacer()
                        }
                        
                    )
                
            }
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}

#Preview {
//    let titles = ["OK Computer", "Govinda", "The Last Dinner Party", "The Cure", "Playlist Viper", "Guts (spilled)"]
//    let images = ["CardImg", "CardImg", "CardImg", "CardImg", "CardImg", "CardImg"]
    VStack{
//        GridCard(albumImg: images, albumTitles: titles)

        GridCard()
    }
}
