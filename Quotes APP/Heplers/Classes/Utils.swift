//
//  Utils.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation
import UIKit

final class Utils {
    static var shared = Utils()
    private init() {}

    func getSceneDelegate() -> SceneDelegate? {
        guard let delegate = UIApplication.shared.connectedScenes.first else {
            return nil
        }
        return delegate.delegate as? SceneDelegate ?? nil
    }

    func getAppDelegate() -> AppDelegate? {
        guard let delegate = UIApplication.shared.delegate else {
            return nil
        }
        return delegate as? AppDelegate ?? nil
    }
}
