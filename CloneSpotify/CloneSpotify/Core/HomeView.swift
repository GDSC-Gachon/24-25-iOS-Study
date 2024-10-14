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
        LazyVStack(spacing: 1, pinnedViews: [.sectionHeaders], content: {
          Section {
            VStack {
              recentsSection
            }
            .padding(.horizontal, 16)
              
            
            ForEach(0..<10) { _ in
              Rectangle()
                .fill(.spotifyGreen)
                .frame(width: 200, height: 200)
            }
          } header: {
            header
          }
        })
        .padding(.top, 8)
      }
      .scrollIndicators(.hidden)
      .clipped()
    }
    .toolbar(.hidden, for: .navigationBar)
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
    .padding(.top, 33)
    .padding(.bottom, 8)
    .padding(.leading, 16)
    .background(Color.spotifyBlack)
  }
  
  private var recentsSection: some View {
    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
      RecentCell(title: "title")
      RecentCell(title: "titletitletitletitletitle")
      RecentCell(title: "title")
      RecentCell(title: "title")
      RecentCell(title: "title")
      RecentCell(title: "title")
      RecentCell(title: "title")
      RecentCell(title: "title")
    }
    .padding(.vertical, 8)
  }
}


#Preview {
    HomeView()
}
