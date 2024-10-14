//
//  HomepageView.swift
//  Spotify_Clone
//
//  Created by 채리원 on 10/11/24.
//

import SwiftUI

struct HomepageView: View {
    @StateObject var viewModel = GridViewModel()
    
    @State private var selectedCategory: Category = .All // All을 기본값으로 선택
    
    var body: some View {
        ZStack {
            Color.surfacePrimary.edgesIgnoringSafeArea(.all)
            
            ScrollView {
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
                .padding(.leading, 16)
                
                
                // GridCard
                VStack(spacing: 16) {
                    ForEach(0..<viewModel.gridItems.count, id: \.self) { rowIndex in
                        HStack(spacing: 16) {
                            ForEach(viewModel.gridItems[rowIndex]) { item in
                                GridCard(gridTitle: item.title, gridImage: item.imageName)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomepageView()
}
