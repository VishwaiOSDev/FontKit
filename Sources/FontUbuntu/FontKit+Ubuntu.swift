//
//  FontKit+Ubuntu.swift
//  
//
//  Created by Vishweshwaran on 02/08/22.
//

import Foundation
import FontKit

extension FontKit {
    public static func registerUbuntu() {
        FontKit.register(.ubuntu, bundle: .module)
    }
}
