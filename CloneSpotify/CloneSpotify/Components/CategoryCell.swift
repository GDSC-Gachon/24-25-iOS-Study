//
//  SpotifyCategoryCell.swift
//  CloneSpotify
//
//  Created by Lee Juwon on 10/12/24.
//

import SwiftUI

struct CategoryCell: View {
  
  var title: String = "Music"
  var isSelected: Bool = false
  
  var body: some View {
    Text(title)
      .font(.callout)
      .font(.system(size: 11))
      .padding(.vertical, 7)
      .padding(.horizontal, 16)
      .themeColors(isSelected: isSelected)
      .cornerRadius(16)
  }
          
}

extension View {
  func themeColors(isSelected: Bool) -> some View {
    self
      .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
      .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
  }
}

#Preview {
  ZStack {
    Color.black.ignoresSafeArea()
    
    VStack {
      CategoryCell(title: "All", isSelected: true)
      CategoryCell(title: "Music", isSelected: false)
    }
  }
}
