//
//  Chips.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/11/24.
//


import SwiftUI


//커테고리 버튼
struct ChipsButton: View {
    let text: String
    let action: () -> Void
    var isChipsButtonActive: Bool = false


    var body: some View {
        Button(action: action) {
            VStack(spacing: 0) {
                Text(text)
                    .font(.spotify(.body_7R))
                    .foregroundColor(isChipsButtonActive ? .black : .white)
            }
            .padding(.top, 7)
            .padding(.bottom, 7)
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .frame(height: 30)
            .background(isChipsButtonActive ? Color.green : Color.gray)
            .cornerRadius(16)
        }
    }
}

#Preview {
    VStack{
        ChipsButton(text: "All",action:  {} )
        ChipsButton(text: "Music",action:  {} )
        ChipsButton(text: "Podcasts",action:  {} )
        
    }
}
