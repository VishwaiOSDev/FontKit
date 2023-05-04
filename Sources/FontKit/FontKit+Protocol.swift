//
//  FontKit+Protocol.swift
//  
//
//  Created by Vishweshwaran on 18/07/22.
//

import SwiftUI

public protocol CustomFontProtocol {
    var fontFamily: String { get }
    
    func of(_ type: FontKit.FontType) -> Font
}
