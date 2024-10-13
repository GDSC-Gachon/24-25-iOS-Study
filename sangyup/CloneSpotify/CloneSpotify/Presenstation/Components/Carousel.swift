//
//  Carousel.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/13/24.
//

import SwiftUI

struct Carousel: View {
    let imageName: String
    let title: String
    let description: String
    let color: Color
    let mixCards = [
        ("rockMixImage", "Rock Mix", "Blur, The Killers, Kula Shaker and more", Color.yellow),
        ("popMixImage", "Pop Mix", "Sabrina Carpenter, Chappell Roan, Olivia Ro...", Color.pink),
        ("upbeatMixImage", "Upbeat Mix", "The Strokes, Talking Heads, Arctic Monkeys", Color.yellow)
    ]
    
    init(imageName: String = "carouselimage", title: String = "POP Mix", description: String = "ehdgoanfrhk qorentksdl akfmrheekfgerhhfr kgsmadslsdl ", color: Color = .green) {
        self.imageName = imageName
        self.title = title
        self.description = description
        self.color = color
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Your top mixs")
                .font(.spotify(.title_4))
                .foregroundStyle(.white)
                .padding(.leading, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.fixed(200))], spacing: 16) {
                    ForEach(mixCards, id: \.1) { card in
                        VStack(alignment: .leading, spacing: 5){
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .cornerRadius(8)
                                .clipped()
                                .padding(.bottom, 3)
                            
                            Text(title)
                                .font(.headline)
                                .foregroundColor(.white)
                            
                            Text(description)
                                .font(.subheadline)
                                .foregroundColor(Color.gray1)
                                .fixedSize(horizontal: false, vertical: true)
                                .lineLimit(2)
                                .frame(maxWidth: 150)

                        }
                    }
                }
                .padding(.leading, 16)
            }
        }
        .frame(height:280)
        .background(Color.black)
        
    }
}


#Preview{
    Carousel()
}
