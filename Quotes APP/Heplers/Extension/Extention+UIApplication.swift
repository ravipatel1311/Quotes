//
//  Extention+UIApplication.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.

import UIKit

extension UIApplication {
    static var keyWindow: UIWindow? {
        UIApplication.shared.connectedScenes.compactMap { ($0 as? UIWindowScene)?.keyWindow }.last
    }
}
