//
//  Extention+Bundle.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

extension Bundle {
    var appName: String {
        object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? object(forInfoDictionaryKey: "CFBundleName") as? String ?? "App-Name"
    }

    func decode<T: Codable>(_ file: String) -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }

        let decoder = JSONDecoder()

        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }

        return loaded
    }
}
