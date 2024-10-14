//
//  JacketCell.swift
//  CloneSpotify
//
//  Created by Lee Juwon on 10/13/24.
//

import SwiftUI

struct JacketCell: View {
  
  var jacketImageSize: CGFloat = 147
  var title: String? = "Daily Mix 1"
  var subtitle: String? = "David Bowie, Julia Jacklin, Julien Baker an..."
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      EmptyView()
        .frame(width: jacketImageSize, height: jacketImageSize)
        .cornerRadius(4)
      
      VStack(alignment: .leading, spacing: 0) {
        if let title {
          Text(title)
            .fontWeight(.semibold)
            .foregroundStyle(.spotifyWhite)
        }
        
        if let subtitle {
          Text(subtitle)
            .lineLimit(2)
            .foregroundStyle(.spotifyLightGray)
        }
      }
      .font(.callout)
    }
    .frame(width: jacketImageSize)
  }
}

#Preview {
  ZStack {
    Color.black.ignoresSafeArea()
    JacketCell()
  }
}
