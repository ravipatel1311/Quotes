//
//  Router.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.

import UIKit

// MARK: - Router
protocol Router {
    func start()
    func setRoot(to route: Route, duration: TimeInterval?, options: UIView.AnimationOptions?)
    func push(to route: Route, with transitionType: CATransitionType?, for interval: TimeInterval?)
    func pop(with transitionType: CATransitionType?, for interval: TimeInterval?)
    func pop(to route: Route, with transitionType: CATransitionType?, for interval: TimeInterval?)
    func show(sheet route: Route, presentationStyle: UIModalPresentationStyle?, transitionStyle: UIModalTransitionStyle?)
    func dismiss()
}
