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
      .padding(.vertical, 7)
      .padding(.horizontal, 16)
      .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
      .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
      .cornerRadius(16)
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
