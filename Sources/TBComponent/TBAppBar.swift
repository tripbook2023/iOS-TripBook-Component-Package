//
//  SwiftUIView.swift
//  
//
//  Created by DDang on 2023/06/14.
//

import SwiftUI
import TBUtil

/// Tripbook AppBar
/// - Author: 김민규
/// - Date: 2023/06/14
public struct TBAppBar: View {
    var title: String
    var onClickedBackButton: () -> Void
    
    public init(title: String? = nil, onClickedBackButton: @escaping () -> Void) {
        if let title {
            self.title = title
        } else {
            self.title = ""
        }
        self.onClickedBackButton = onClickedBackButton
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            HStack {
                Button(action: {
                    self.onClickedBackButton()
                }) {
                    TBIcon.before.iconSize(size: .medium)
                }.foregroundColor(TBColor.grayscale.levels[10])
                Spacer()
            }
            
            Text(self.title)
                .font(TBFont.body_2)
                .foregroundColor(TBColor.grayscale.levels[9])
        }.frame(height: 48)
    }
}

#if DEBUG
struct TBAppBar_Previews: PreviewProvider {
    static var previews: some View {
        TBAppBar(title: "텍스트") {
            
        }
        .previewDevice("iPhone 14 Pro")
        .previewLayout(.sizeThatFits)
        .padding()
        .configureFont()
    }
}
#endif
