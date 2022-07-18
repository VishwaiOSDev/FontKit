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
    
    static func lato(_ type: FontKit.FontType) -> Font {
        return Lato.of(type)
    }
    
    static func roboto(_ type: FontKit.FontType) -> Font {
        return Roboto.of(type)
    }
    
    private static var Inter: CustomFont {
        return CustomFont(.inter)
    }
    
    private static var Lato: CustomFont {
        return CustomFont(.lato)
    }
    
    private static var Roboto: CustomFont {
        return CustomFont(.roboto)
    }
}
#endif
