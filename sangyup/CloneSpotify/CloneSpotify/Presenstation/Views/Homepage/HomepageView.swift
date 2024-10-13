//
//  HomepageView.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/11/24.
//
import SwiftUI

struct HomepageView: View {
    var body: some View {
        VStack {
            // 상단 프로필 및 필터 버튼들
            ScrollView {
                VStack(spacing: 20) {
                    HStack {
                        Avatar(AvatarImage:"Avatar")
                        HStack(spacing: 10) {
                            ChipsButton(text: "All", action: {})
                            ChipsButton(text: "Music", action: {})
                            ChipsButton(text: "Podcasts", action: {})
                        }
                        Spacer()
                    }
                    .padding(.leading, 16)
                    .padding(.top, 33)

                    
                    // 리스트 섹션
                    GridCard()
                    
                    // 새로운 음악 릴리즈 섹션
                    VStack{
                        HStack{
                            Avatar(AvatarImage:"artist", size: 48)
                            VStack(alignment: .leading, spacing: 0) {
                                Text("New release from")
                                    .font(.spotify(.body_6R))
                                    .foregroundColor(Color.gray1)

                                Text("Arctic Monkeys")
                                    .font(.spotify(.title_4))
                                    .foregroundColor(.white)
                                    .padding(.top, 4)
                            }
                            .padding(.leading, 16)

                            Spacer()

                        }
                        .padding(.top, 20)
                        .padding(.leading, 16)
                    }
                    RecomandedCard()
                    // Your top mixes
                    Carousel()
                }
            }
            
            
        }
        .background(Color.black.edgesIgnoringSafeArea(.all)) // 배경 색상 설정
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
