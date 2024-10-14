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
              smallCardSection
            }
            .padding(.horizontal, 16)
            
            newReleaseSection()
              .padding(.horizontal, 16)
              .padding(.top, 24)
              .padding(.bottom, 8)
            
            listRows
              .padding(.top, 24)
              .padding(.bottom, 8)
            
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
  
  private var smallCardSection: some View {
    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
      SmallCardCell(title: "title")
      SmallCardCell(title: "titletitletitletitletitle")
      SmallCardCell(title: "title")
      SmallCardCell(title: "title")
      SmallCardCell(title: "title")
      SmallCardCell(title: "title")
      SmallCardCell(title: "title")
      SmallCardCell(title: "title")
    }
    .padding(.vertical, 8)
  }
  
  private func newReleaseSection() -> some View {
    NewReleaseCell(
      headline: "New release from",
      subheadline: "Arctic Monkeys",
      title: "I Wanna Be Yours",
      subtitle: "Single • Arctic Monkeys"
    )
  }
  
  private var listRows: some View {
    ForEach(0..<6) { _ in
      VStack(spacing: 8) {
        Text("Your top mixes")
          .font(.title)
          .fontWeight(.semibold)
          .foregroundStyle(.spotifyWhite)
          .frame(maxWidth: .infinity, alignment: .leading)
          .padding(.horizontal, 16)
        
        ScrollView(.horizontal) {
          HStack(alignment: .top, spacing: 16) {
            ForEach(0..<6) { _ in
              JacketCell(
                jacketImageSize: 147,
                title: "Daily Mix 1",
                subtitle: "David Bowie, Julia Jacklin, Julien Baker an..."
              )
            }
          }
          .padding(.horizontal, 16)
        }
        .scrollIndicators(.hidden)
      }
    }
  }
}


#Preview {
    HomeView()
}
