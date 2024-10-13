//
//  UIExtension.swift
//  CloneSpotify
//
//  Created by 이상엽 on 10/13/24.
//

import SwiftUI

// 커스텀 클립 형태 정의
struct RoundedCorners: Shape {
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY - bl))
        path.addQuadCurve(to: CGPoint(x: rect.minX + bl, y: rect.maxY), controlPoint: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX - br, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY - br), controlPoint: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + tr))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - tr, y: rect.minY), controlPoint: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX + tl, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.minY + tl), controlPoint: CGPoint(x: rect.minX, y: rect.minY))
        path.close()
        return Path(path.cgPath)
    }
}

func setupTabBarAppearance() {
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    
    // 배경 색상 설정
    appearance.backgroundColor = UIColor.black
    
    // 선택된 아이템의 색상
    UITabBar.appearance().tintColor = UIColor.white
    
    // 선택되지 않은 아이템의 색상
    UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    
    // 선택된 아이템의 아이콘 및 텍스트 색상 설정
    appearance.stackedLayoutAppearance.selected.iconColor = UIColor.white
    appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
    
    UITabBar.appearance().standardAppearance = appearance
    if #available(iOS 15.0, *) {
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
}
