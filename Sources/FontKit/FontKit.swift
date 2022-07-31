//
//  FontKit.swift
//  
//
//  Created by Vishweshwaran on 18/07/22.
//

import Foundation
import CoreGraphics
import CoreText

final public class FontKit {
    
    static let fontExtension: String = "ttf"
    
    public enum FontFamily: String {
        case inter = "Inter"
        case lato = "Lato"
        case roboto = "Roboto"
        case openSans = "OpenSans"
        case poppins = "Poppins"
        case raleway = "Raleway"
    }
    
    public enum FontType: CaseIterable {
        public static var allCases: [FontKit.FontType] {
            return [
                .black(size: 14),
                .light(size: 14),
                .extraLight(size: 14),
                .regular(size: 14),
                .italic(size: 14),
                .medium(size: 14),
                .mediumItalic(size: 14),
                .semibold(size: 14),
                .bold(size: 14),
                .extraBold(size: 14),
                .boldItalic(size: 14),
                .heavy(size: 14),
                .thin(size: 14)
            ]
        }
        
        case black(size: CGFloat)
        case bold(size: CGFloat)
        case extraBold(size: CGFloat)
        case extraLight(size: CGFloat)
        case light(size: CGFloat)
        case medium(size: CGFloat)
        case regular(size: CGFloat)
        case semibold(size: CGFloat)
        case italic(size: CGFloat)
        case thin(size: CGFloat)
        case mediumItalic(size: CGFloat)
        case boldItalic(size: CGFloat)
        case heavy(size: CGFloat)
        
        var size: CGFloat {
            switch self {
            case .black(let size),
                    .bold(let size),
                    .extraBold(let size),
                    .extraLight(let size),.light(let size),
                    .medium(let size),
                    .regular(let size),
                    .semibold(let size),
                    .italic(let size),
                    .thin(let size),
                    .mediumItalic(let size),
                    .boldItalic(let size),
                    .heavy(let size):
                return size
                
            }
        }
        
        public var type: String {
            switch self {
            case .black: return "Black"
            case .bold: return "Bold"
            case .extraBold: return "ExtraBold"
            case .extraLight: return "ExtraLight"
            case .light: return "Light"
            case .medium: return "Medium"
            case .regular: return "Regular"
            case .semibold: return "SemiBold"
            case .italic: return "Italic"
            case .thin: return "Thin"
            case .mediumItalic: return "MediumItalic"
            case .boldItalic: return "BoldItalic"
            case .heavy: return "Heavy"
            }
        }
    }
    
    public static func register(_ fonts: FontFamily..., bundle: Bundle) {
        fonts.forEach { fontFamily in
            FontType.allCases.forEach { type in
                registerFont(
                    bundle: bundle,
                    fontName: "\(fontFamily.rawValue)-\(type.type)",
                    fontExtension: fontExtension
                )
            }
        }
    }
    
    @discardableResult
    static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) -> Bool {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension) else {
            return false
        }
        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            return false
        }
        guard let font = CGFont(fontDataProvider) else {
            return false
        }
        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        guard success else {
            return false
        }
        return true
    }
}
