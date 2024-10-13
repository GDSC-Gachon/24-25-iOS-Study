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
    var isChipsButtonActive: Bool
    init(AvatarImage: String? = nil, action: @escaping () -> Void = {}, isChipsButtonActive: Bool = false) {
        self.AvatarImage = AvatarImage
        self.action = action
        self.isChipsButtonActive = isChipsButtonActive
    }
    
    var body: some View {
        Button(action: action){
            if let AvatarImage = AvatarImage {
                // AvatarImage가 있으면 커스텀 이미지 사용
                Image(AvatarImage)
                    .resizable()
                    .frame(width: 32, height: 32)
            } else {
                // AvatarImage가 없으면 시스템 이미지 사용
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundStyle(Color.black)
            }
        }
    }
}

#Preview {
    VStack{
        Avatar(AvatarImage: "Avatar", action: {}, isChipsButtonActive: true)
        Avatar()
    }
}
