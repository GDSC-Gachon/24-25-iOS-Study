//
//  CategoryCell.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/13/24.
//

import SwiftUI

struct CategoryCell: View {
    var title: String = "All" // 선택 기본값을 All로 설정
    var selected: Bool = false
    
    var body: some View {
        Text("title")
            .font(Font.customFont(.body7_regular))
            .background(selected ? Color.chipGreen : Color.chipSecondary)
            .foregroundStyle(selected ? Color.textTertiary : Color.textPrimary)
            .cornerRadius(16)
            .padding(.horizontal, 16)
            .padding(.vertical, 7)
    }
}

#Preview {
    CategoryCell()
}
