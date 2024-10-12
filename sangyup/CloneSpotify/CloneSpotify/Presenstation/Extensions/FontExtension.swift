//
//  FontExtension.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/8/24.
//
import SwiftUI
//SFProText-Regular
//SFProText-Medium
//SFProText-Bold
extension Font {
    enum FontFamily: String {
        case Regular, Medium, Bold
        
        init?(weight: Int) {
            switch weight {
            case 400: self = .Regular
            case 500: self = .Medium
            case 700: self = .Bold
            default: return nil
            }
        }
    }
    
    enum SpotifyStyle {
        case title_1, title_2, title_3, title_4, title_5
        case body_1R, body_1B
        case body_2R, body_2B
        case body_3R, body_3B, body_3M
        case body_4R, body_4B
        case body_5R, body_5B
        case body_6R, body_6B, body_6M
        case body_7R, body_7B
        
        var size: CGFloat {
            switch self {
            case .title_1:
                return 44
            case .title_2:
                return 30
            case .title_3:
                return 23
            case .title_4:
                return 22
            case .title_5:
                return 19
            case .body_1R, .body_1B:
                return 18
            case .body_2R, .body_2B:
                return 17
            case .body_3R, .body_3B, .body_3M:
                return 15
            case .body_4R, .body_4B:
                return 14
            case .body_5R, .body_5B:
                return 13
            case .body_6R, .body_6B, .body_6M:
                return 12
            case .body_7R, .body_7B:
                return 11
            }
        }
            
        var family: FontFamily {
            switch self {
            case .title_1, .title_2, .title_3, .title_4, .title_5, .body_1B, .body_2B, .body_3B, .body_4B, .body_5B, .body_6B, .body_7B:
                return .Bold
            case .body_3M, .body_6M:
                return .Medium
            case .body_1R, .body_2R, .body_3R, .body_4R, .body_5R, .body_6R, .body_7R:
                return .Regular
            }
        }
    }
    
    static func spotify(_ style: SpotifyStyle) -> Font {
        return Font.custom("SF-Pro-Text-\(style.family.rawValue)", size: style.size)
    }
    
    static func spotify(size: CGFloat, weight: Int) -> Font {
        guard let family = FontFamily(weight: weight) else {
            fatalError("Invalid weight value. Must be between 100 and 900.")
        }
        return Font.custom("SF-Pro-Text-\(family.rawValue)", size: size)
    }
     
    static func spotify(size: CGFloat, family: FontFamily) -> Font {
        return Font.custom("SF-Pro-Text-\(family.rawValue)", size: size)
    }
}
