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
    
    /// TBFont Styles
    static let heading_1: Font = .suit(.bold, size: 24)
    static let heading_2: Font = .suit(.bold, size: 20)
    static let title_1: Font = .suit(.bold, size: 18)
    static let title_2: Font = .suit(.bold, size: 16)
    static let title_3: Font = .suit(.bold, size: 14)
    static let title_4: Font = .suit(.bold, size: 12)
    static let body_1: Font = .suit(.medium, size: 18)
    static let body_2: Font = .suit(.medium, size: 16)
    static let body_3: Font = .suit(.medium, size: 14)
    static let caption_1: Font = .suit(.medium, size: 12)
    static let caption_2: Font = .suit(.medium, size: 10)
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
            VStack(alignment: .leading, spacing: 20) {
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
            
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Heading").font(.suit(.heavy, size: 20))
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.heading_1)
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.heading_2)
                }
                VStack(alignment: .leading) {
                    Text("Title").font(.suit(.heavy, size: 20))
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.title_1)
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.title_2)
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.title_3)
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.title_4)
                }
                VStack(alignment: .leading) {
                    Text("Body").font(.suit(.heavy, size: 20))
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.body_1)
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.body_2)
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.body_3)
                }
                VStack(alignment: .leading) {
                    Text("Caption").font(.suit(.heavy, size: 20))
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.caption_1)
                    Text("어제보다 4℃ 높아요 · 주제별 PICK · 최대 60% 캐시백 · QR 결제 · 충전량 35.29kWh")
                        .font(TBFont.caption_2)
                }
            }.previewDisplayName("TBFont Style")
        }
        .previewLayout(.sizeThatFits)
        .padding()
        .configureFont()
    }
}
#endif
