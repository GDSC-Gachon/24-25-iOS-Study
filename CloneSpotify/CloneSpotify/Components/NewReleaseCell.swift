//
//  NewReleaseCell.swift
//  CloneSpotify
//
//  Created by Lee Juwon on 10/12/24.
//

import SwiftUI

struct NewReleaseCell: View {
  
  var headline: String? = "New release from"
  var subheadline: String? = "Arctic Monkeys"
  var title: String? = "I Wanna Be Yours"
  var subtitle: String? = "Single • Arctic Monkeys"
  
  var body: some View {
    VStack(spacing: 16) {
      HStack(spacing: 8) {
        EmptyView()
          .frame(width: 48, height: 48)
        
        VStack(alignment: .leading, spacing: 4) {
          if let headline {
            Text(headline)
              .foregroundStyle(.spotifyLightGray)
              .font(.callout)
          }
          
          if let subheadline {
            Text(subheadline)
              .font(.title2)
              .fontWeight(.medium)
              .foregroundStyle(.spotifyWhite)
          }
        }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      
      HStack(spacing: 16) {
        EmptyView()
          .background(.spotifyWhite)
          .clipShape(Circle())
          .frame(width: 142, height: 142)
        
        VStack(alignment: .leading, spacing: 44) {
          VStack(alignment: .leading, spacing: 0) {
            if let title {
              Text(title)
                .fontWeight(.semibold)
                .foregroundStyle(.spotifyWhite)
            }
            
            if let subtitle {
              Text(subtitle)
                .foregroundStyle(.spotifyLightGray)
            }
          }
          .font(.callout)
          
          HStack(spacing: 0) {
            Image(systemName: "plus.circle")
              .foregroundStyle(.spotifyLightGray)
              .font(.title3)
              .padding(4)
              .offset(x: -4)
              .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "play.circle.fill")
              .foregroundStyle(.spotifyWhite)
              .font(.title)
          }
        }
        .padding(.trailing, 16)
      }
      .themeColors(isSelected: false)
      .cornerRadius(8)
    }
  }
}

#Preview {
  ZStack {
    Color.black.ignoresSafeArea()
    
    NewReleaseCell()
      .padding()
  }
}
