//
//  SwiftUIView.swift
//  
//
//  Created by DDang on 2023/06/14.
//

import SwiftUI
import TBUtil

/// Tripbook Primary Button
/// - Author: 김민규
/// - Date: 2023/06/14
public struct TBPrimaryButton: View {
    /// Button Text
    var title: String
    /// Button State
    @Binding var isEnabled: Bool
    /// Button OnClicked Event
    var onClickedEvent: () -> Void
    
    public init(title: String, isEnabled: Binding<Bool>, onClickedEvent: @escaping () -> Void) {
        self.title = title
        self._isEnabled = isEnabled
        self.onClickedEvent = onClickedEvent
    }
    
    public var body: some View {
        Button(action: {
            if self.isEnabled {
                self.onClickedEvent()
            }
        }) {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 52)
                .foregroundColor(self.isEnabled ? TBColor.primary.main : TBColor.grayscale.levels[2])
                .overlay(
                    Text(self.title)
                        .font(TBFont.body_3)
                )
        }.foregroundColor(self.isEnabled ? TBColor.grayscale.levels[0] : TBColor.grayscale.levels[7])
    }
}

/// Tripbook Border Button
/// - Author: 김민규
/// - Date: 2023/06/14
public struct TBBorderButton: View {
    /// Button Text
    var title: String
    /// Button OnClicked Event
    var onClickedEvent: () -> Void
    
    public init(title: String, onClickedEvent: @escaping () -> Void) {
        self.title = title
        self.onClickedEvent = onClickedEvent
    }
    
    public var body: some View {
        Button(action: {
            self.onClickedEvent()
        }) {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 52)
                .foregroundColor(.clear)
                .overlay(
                    Text(self.title)
                        .font(TBFont.body_3)
                )
        }
        .foregroundColor(TBColor.primary.main)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(TBColor.primary.main, lineWidth: 1)
        )
    }
}

struct TBPrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TBPrimaryButton(
                title: "label",
                isEnabled: .constant(true)
            ) {
                
            }
            
            TBPrimaryButton(
                title: "label",
                isEnabled: .constant(false)
            ) {
                
            }
            
            TBBorderButton(title: "label") {
                
            }
        }
        .previewDevice("iPhone 14 Pro")
        .previewLayout(.sizeThatFits)
        .padding()
        .configureFont()
    }
}
