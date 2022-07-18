//
//  FontKit+OpenSans.swift
//  
//
//  Created by Vishweshwaran on 18/07/22.
//

import Foundation
import FontKit

extension FontKit {
    public static func registerOpenSans() {
        FontKit.register(.openSans, bundle: .module)
    }
}
