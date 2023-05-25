//
//  File.swift
//  
//
//  Created by DDang on 2023/05/25.
//

import Foundation
import SwiftUI

public extension Image {
    /// TBIcon의 사이즈를 지정하는 Function.
    func iconSize(size: TBIconSize) -> some View {
        return self
            .resizable()
            .scaledToFit()
            .frame(width: size.rawValue, height: size.rawValue)
    }
}

/// TBIcon의 정형화된 사이즈를 정의
/// - Author: 김민규
/// - Date: 2023/05/25
public enum TBIconSize: CGFloat {
    case tiny = 14
    case small = 18
    case medium = 24
    case big = 36
}

/// Tripbook 고유 Icon 명세
/// - Author: 김민규
/// - Date: 2023/05/25
public struct TBIcon {
    /// Before Icon
    static let before: Image = Image(systemName: "chevron.left")
    /// Next Icon
    static let next: Image = Image(systemName: "chevron.right")
    /// Down Icon
    static let down: Image = Image(systemName: "arrowtriangle.down.fill")
    /// Check Icon
    static let check: Image = Image(systemName: "checkmark")
    /// Cancel Icon
    static let cancel: Image = Image(systemName: "xmark")
    /// Photo Icon
    static let picture: Image = Image(systemName: "photo")
    /// Camera Icon
    static let camera: Image = Image(systemName: "camera")
    /// Timer Icon
    static let timer: Image = Image(systemName: "clock.fill")
}

#if DEBUG
struct TBIcon_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LazyVGrid(columns: .init(repeating: .init(.flexible()), count: 4)) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Before").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.before.iconSize(size: .tiny)
                        
                        Text("Small:").font(.title2)
                        TBIcon.before.iconSize(size: .small)
                        
                        Text("Medium:").font(.title2)
                        TBIcon.before.iconSize(size: .medium)
                        
                        Text("Big:").font(.title2)
                        TBIcon.before.iconSize(size: .big)
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Next").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.next.iconSize(size: .tiny)
                    
                        Text("Small:").font(.title2)
                        TBIcon.next.iconSize(size: .small)
                    
                        Text("Medium:").font(.title2)
                        TBIcon.next.iconSize(size: .medium)
        
                        Text("Big:").font(.title2)
                        TBIcon.next.iconSize(size: .big)
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Down").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.down.iconSize(size: .tiny)
                    
                        Text("Small:").font(.title2)
                        TBIcon.down.iconSize(size: .small)
                    
                        Text("Medium:").font(.title2)
                        TBIcon.down.iconSize(size: .medium)
        
                        Text("Big:").font(.title2)
                        TBIcon.down.iconSize(size: .big)
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Check").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.check.iconSize(size: .tiny)
                    
                        Text("Small:").font(.title2)
                        TBIcon.check.iconSize(size: .small)
                    
                        Text("Medium:").font(.title2)
                        TBIcon.check.iconSize(size: .medium)
        
                        Text("Big:").font(.title2)
                        TBIcon.check.iconSize(size: .big)
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Cancel").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.cancel.iconSize(size: .tiny)
                    
                        Text("Small:").font(.title2)
                        TBIcon.cancel.iconSize(size: .small)
                    
                        Text("Medium:").font(.title2)
                        TBIcon.cancel.iconSize(size: .medium)
        
                        Text("Big:").font(.title2)
                        TBIcon.cancel.iconSize(size: .big)
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Picture").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.picture.iconSize(size: .tiny)
                    
                        Text("Small:").font(.title2)
                        TBIcon.picture.iconSize(size: .small)
                    
                        Text("Medium:").font(.title2)
                        TBIcon.picture.iconSize(size: .medium)
        
                        Text("Big:").font(.title2)
                        TBIcon.picture.iconSize(size: .big)
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Camera").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.camera.iconSize(size: .tiny)
                    
                        Text("Small:").font(.title2)
                        TBIcon.camera.iconSize(size: .small)
                    
                        Text("Medium:").font(.title2)
                        TBIcon.camera.iconSize(size: .medium)
        
                        Text("Big:").font(.title2)
                        TBIcon.camera.iconSize(size: .big)
                    }
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Timer").font(.title)
                    LazyVGrid(
                        columns: [
                            GridItem(.fixed(70), alignment: .leading),
                            GridItem(.flexible())
                        ]
                    )
                    {
                        Text("Tiny:").font(.title2)
                        TBIcon.timer.iconSize(size: .tiny)
                    
                        Text("Small:").font(.title2)
                        TBIcon.timer.iconSize(size: .small)
                    
                        Text("Medium:").font(.title2)
                        TBIcon.timer.iconSize(size: .medium)
        
                        Text("Big:").font(.title2)
                        TBIcon.timer.iconSize(size: .big)
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.previewLayout(.sizeThatFits)
    }
}
#endif
