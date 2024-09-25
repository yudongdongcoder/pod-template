//
//  Image+Bundle.swift
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

import Foundation
import UIKit


extension UIImage {
    static func bundleImage(named name: String, bundle: Bundle? = Bundle.default) -> UIImage? {
        return UIImage(named: name, in: bundle, compatibleWith: nil)
    }
}

extension Bundle {
    static var local: Bundle {
        return Bundle(for: BundleToken.self)
    }
    
    static var `default`: Bundle? {
        return bundle(named: "PROJECT")
    }
    
    static func bundle(named name: String) -> Bundle? {
        guard let url = Bundle(for: BundleToken.self).url(forResource: name, withExtension: "bundle") else {
            return nil
        }
        return Bundle(url: url)
    }
}

private class BundleToken {}
