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
    public struct TBIconState {
        public let normal: Image
        public let active: Image
        
        init(_ iconName: String) {
            self.normal = Image(iconName + "/Default", bundle: .module)
            self.active = Image(iconName + "/Active", bundle: .module)
        }
    }
    
    public struct TBNavigationIcons {
        public let home = TBIconState("Navigation/Home")
        public let mypage = TBIconState("Navigation/Mypage")
        public let plus = TBIconState("Navigation/Plus")
        public let tripbook = TBIconState("Navigation/Tripbook")
    }
    
    static public let before = Image("Before", bundle: .module)
    static public let bell = Image("Bell", bundle: .module)
    static public let bookmark = Image("Bookmark", bundle: .module)
    static public let camera = Image("Camera", bundle: .module)
    static public let cancel = Image("Cancel", bundle: .module)
    static public let check = Image("Check", bundle: .module)
    static public let comment = Image("Comment", bundle: .module)
    static public let delete = Image("Delete", bundle: .module)
    static public let down: [Image] = [
        Image("Down/01", bundle: .module),
        Image("Down/02")
    ]
    static public let edit = Image("Edit", bundle: .module)
    static public let filter = Image("Filter", bundle: .module)
    static public let keyboard = Image("Keyboard", bundle: .module)
    static public let like = Image("Like", bundle: .module)
    static public let location: [Image] = [
        Image("Location/01", bundle: .module),
        Image("Location/02", bundle: .module)
    ]
    static public let more = TBIconState("More")
    static public let navigation = TBNavigationIcons()
    static public let next: Image = Image("Next", bundle: .module)
    static public let picture: Image = Image("Picture", bundle: .module)
    static public let search = Image("Search", bundle: .module)
    static public let share = Image("Share", bundle: .module)
    static public let timer: Image = Image("Timer", bundle: .module)
    static public let txt = Image("Txt", bundle: .module)
    static public let up = Image("Up", bundle: .module)
    static public let writing = Image("Writing", bundle: .module)
}
