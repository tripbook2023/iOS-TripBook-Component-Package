//
//  File.swift
//  
//
//  Created by DDang on 2023/05/22.
//

import Foundation
import SwiftUI

public extension View {
    /// Product로 폰트 등록
    /// - Author: 김민규
    /// - Date: 2023/05/22
    func configureFont() -> some View {
        TBFont.Suit.allCases.forEach { font in
            guard let url = Bundle.module.url(forResource: font.rawValue, withExtension: "otf") else { return }
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
        
        return self
    }
}

/// Tripbook 고유 Font 명세
/// - Author: 김민규
/// - Date: 2023/05/22
public struct TBFont {
    /// Suit Font
    public enum Suit: String, CaseIterable {
        case thin = "SUIT-Thin"
        case extraLight = "SUIT-ExtraLight"
        case light = "SUIT-Light"
        case regular = "SUIT-Regular"
        case medium = "SUIT-Medium"
        case semiBold = "SUIT-SemiBold"
        case bold = "SUIT-Bold"
        case extraBold = "SUIT-ExtraBold"
        case heavy = "SUIT-Heavy"
    }
}

public extension Font {
    /// View(Text)를 Suit Font로 지정, 글자 사이즈 지정
    /// - Parameters:
    ///   - weight: 글자 굵기
    ///   - size: 글자 크기
    static func suit(_ weight: TBFont.Suit, size: CGFloat) -> Font {
        return .custom(weight.rawValue, size: size)
    }
}

#if DEBUG
/// TBFont에 대한 사용법 및 Previews
struct TBFont_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack(spacing: 20) {
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.thin, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.extraLight, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.light, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.regular, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.medium, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.semiBold, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.bold, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.extraBold, size: 20))
                Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                    .font(.suit(.heavy, size: 20))
            }.previewDisplayName("SUIT")
        }
        .previewLayout(.sizeThatFits)
        .padding()
        .configureFont()
    }
}
#endif
