//
//  Avatar.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/13/24.
//

import SwiftUI

struct Avatar: View {
    let AvatarImage: String?
    let action: () -> Void
    let size: CGFloat
    var isChipsButtonActive: Bool
    init(AvatarImage: String? = nil, action: @escaping () -> Void = {}, size: CGFloat = 32, isChipsButtonActive: Bool = false) {
        self.AvatarImage = AvatarImage
        self.action = action
        self.size = size
        self.isChipsButtonActive = isChipsButtonActive
    }
    
    var body: some View {
        Button(action: action){
            if let AvatarImage = AvatarImage {
                // AvatarImage가 있으면 커스텀 이미지 사용
                Image(AvatarImage)
                    .resizable()
                    .frame(width: size, height: size)
                    .cornerRadius(30)
            } else {
                // AvatarImage가 없으면 시스템 이미지 사용
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: size, height: size)
                    .foregroundStyle(Color.black)
            }
        }
    }
}

#Preview {
    VStack{
        Avatar(AvatarImage: "artist", action: {}, isChipsButtonActive: true)
        Avatar(size: 48)
    }
}
