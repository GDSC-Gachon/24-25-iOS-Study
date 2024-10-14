//
//  HomeView.swift
//  CloneSpotify
//
//  Created by Lee Juwon on 10/11/24.
//

import SwiftUI

struct HomeView: View {
  
  @State private var selectedCategory: Category? = nil
  
  var body: some View {
    ZStack {
      Color.spotifyBlack.ignoresSafeArea()
      
      ScrollView(.vertical) {
        header
        
        ForEach(0..<20) { _ in
          Rectangle()
            .frame(width: 200, height: 200)
        }
      }
      .scrollIndicators(.hidden)

    }
  }
  
  private var header: some View {
    HStack(spacing: 0) {
      ZStack {
        EmptyView()
          .background(.spotifyWhite)
          .clipShape(Circle())
          .onTapGesture {
            
          }
      }
      .frame(width: 35, height: 35)
      
      ScrollView(.horizontal) {
        HStack(spacing: 8) {
          ForEach(Category.allCases, id: \.self) { category in
            CategoryCell(title: category.rawValue, isSelected: category == selectedCategory)
              .onTapGesture {
                selectedCategory = category
              }
          }
        }
        .padding(.horizontal, 16)
      }
      .scrollIndicators(.hidden)
    }
  }
}

#Preview {
    HomeView()
}
