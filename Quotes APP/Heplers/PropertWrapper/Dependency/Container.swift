//
//  Container.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

// MARK: - Storable
protocol Storable {
    var identifire: UUID { get }
}

// MARK: - Container
class Container<T>: Storable {
    var identifire: UUID = .init()
    var factory: () -> T

    init(factory: @escaping () -> T) {
        self.factory = factory
    }
}
