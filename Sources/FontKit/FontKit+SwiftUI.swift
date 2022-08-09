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
    
    static func openSans(_ type: FontKit.FontType) -> Font {
        return OpenSans.of(type)
    }
    
    static func poppins(_ type: FontKit.FontType) -> Font {
        return Poppins.of(type)
    }
    
    static func raleway(_ type: FontKit.FontType) -> Font {
        return Raleway.of(type)
    }
    
    static func ubuntu(_ type: FontKit.FontType) -> Font {
        return Ubuntu.of(type)
    }
    
    static func rubik(_ type: FontKit.FontType) -> Font {
        return Rubik.of(type)
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
    
    private static var OpenSans: CustomFont {
        return CustomFont(.openSans)
    }
    
    private static var Poppins: CustomFont {
        return CustomFont(.poppins)
    }
    
    private static var Raleway: CustomFont {
        return CustomFont(.raleway)
    }
    
    private static var Ubuntu: CustomFont {
        return CustomFont(.ubuntu)
    }
    
    private static var Rubik: CustomFont {
        return CustomFont(.rubik)
    }
}
#endif
