//
//  RecentCell.swift
//  CloneSpotify
//
//  Created by Lee Juwon on 10/12/24.
//

import SwiftUI

struct SmallCardCell: View {
  
  var title: String = "TitleTitleTitleTitleTitleTitleTitleTitleTitle"
  
    var body: some View {
      HStack(spacing: 16) {
        EmptyView()
          .frame(width: 56, height: 56)
          .foregroundStyle(.spotifyWhite)
        
        Text(title)
          .font(.callout)
          .font(.system(size: 11))
          .lineLimit(2)
        
      }
      .foregroundStyle(.red)
      .padding(.trailing, 8)
      .frame(maxWidth: .infinity, alignment: .leading)
      .themeColors(isSelected: false)
      .cornerRadius(4)
    }
}

#Preview {
  ZStack {
    Color.black.ignoresSafeArea()
    
    VStack {
      HStack {
        SmallCardCell()
        SmallCardCell()
      }
      HStack {
        SmallCardCell()
        SmallCardCell()
      }
    }
  }
}
