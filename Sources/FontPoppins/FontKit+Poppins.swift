//
//  FontKit+Poppins.swift
//  
//
//  Created by Vishweshwaran on 18/07/22.
//

import Foundation
import FontKit

extension FontKit {
    public static func registerPoppins() {
        FontKit.register(.poppins, bundle: .module)
    }
}
