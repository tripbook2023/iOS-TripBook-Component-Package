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
    static public let before: Image = Image("Before", bundle: .module)
    /// Next Icon
    static public let next: Image = Image("Next", bundle: .module)
    /// Down Icon
    static public let down: Image = Image("Down", bundle: .module)
    /// Check Icon
    static public let check: Image = Image("Check", bundle: .module)
    /// Cancel Icon
    static public let cancel: Image = Image("Cancel", bundle: .module)
    /// Photo Icon
    static public let picture: Image = Image("Picture", bundle: .module)
    /// Camera Icon
    static public let camera: Image = Image("Camera", bundle: .module)
    /// Timer Icon
    static public let timer: Image = Image("Timer", bundle: .module)
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
