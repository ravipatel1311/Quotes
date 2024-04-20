//
//  NetworkManager.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

final class NetworkManager: NetworkService {
    func getData(type: String) async throws -> [ResponseModelElement] {
        try await APIService.request(API.quotes(type: type))
    }
}
