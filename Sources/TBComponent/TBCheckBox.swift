//
//  SwiftUIView.swift
//  
//
//  Created by DDang on 2023/06/15.
//

import SwiftUI
import TBUtil

/// Tripbook CheckBox
/// - Author: 김민규
/// - Date: 2023/06/15
public struct TBCheckBox: View {
    @Binding var isChecked: Bool
    
    /// Tripbook CheckBox Initializer
    /// - Parameters:
    ///     - isChecked: Binding CheckBox Checked Variable
    public init(_ isChecked: Binding<Bool>) {
        self._isChecked = isChecked
    }
    
    public var body: some View {
        if self.isChecked {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .foregroundColor(TBColor.primary.main)
                
                TBIcon.check.iconSize(size: .medium)
                    .foregroundColor(TBColor.grayscale.levels[0])
            }.frame(width: 24, height: 24)
        } else {
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .foregroundColor(TBColor.grayscale.levels[3])
                
                TBIcon.check.iconSize(size: .medium)
                    .foregroundColor(TBColor.grayscale.levels[2])
            }.frame(width: 24, height: 24)
        }
    }
}

struct TBCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TBCheckBox(.constant(true))
                .previewDevice("iPhone 14 Pro")
                .previewLayout(.sizeThatFits)
                .padding()
            
            TBCheckBox(.constant(false))
                .previewDevice("iPhone 14 Pro")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
