//
//  NetworkService.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

protocol NetworkService {
    func getData(type: String) async throws -> [ResponseModelElement]
}
