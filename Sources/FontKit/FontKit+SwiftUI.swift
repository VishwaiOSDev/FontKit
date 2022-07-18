//
//  FontKit+SwiftUI.swift
//  
//
//  Created by Vishweshwaran on 18/07/22.
//


#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, *)
public extension Font {
    
    static func inter(_ type: FontKit.FontType) -> Font {
        return Inter.of(type)
    }
    
    private static var Inter: CustomFont {
        return CustomFont(.inter)
    }
}
#endif
