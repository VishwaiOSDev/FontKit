//
//  File.swift
//  
//
//  Created by Vishweshwaran on 18/07/22.
//

import SwiftUI

public struct CustomFont: CustomFontProtocol {
    
    public var fontFamily: String
    
    public init(_ type: FontKit.FontFamily) {
        self.fontFamily = type.rawValue
    }
    
    public func of(_ type: FontKit.FontType) -> Font {
        let name = "\(fontFamily)-\(type.type)"
        return .custom(name, size: type.size)
    }
}

