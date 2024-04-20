//
//  OptionalInjected.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

@propertyWrapper
public class OptionalInjected<Service> {
    public var wrappedValue: Service?

    public init(resolver: Resolver = .default, tag: String? = nil) {
        wrappedValue = resolver.resolve(type: Service.self, tag: tag)
    }
}
