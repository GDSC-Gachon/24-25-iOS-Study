//
//  HomepageView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/11/24.
//

import SwiftUI

struct HomepageView: View {
    @State private var selectedCategory: Category = .All // All을 기본값으로 선택
    
    var body: some View {
        ZStack {
            Color.surfacePrimary.edgesIgnoringSafeArea(.all)
            
            // Profile & Category
            HStack(spacing: 0) {
                Image("Profile")
                
                Spacer().frame(width: 16)
                
                ForEach(Category.allCases, id: \.self) { category in
                    CategoryCell (
                        categoryTitle: category.rawValue.capitalized,
                        isSelected: category == selectedCategory
                    )
                    .onTapGesture {
                        selectedCategory = category
                    }
                }
                Spacer()
            }
            .padding(.leading, 16) // 왼쪽 간격 
        }
    }
}

#Preview {
    HomepageView()
}
