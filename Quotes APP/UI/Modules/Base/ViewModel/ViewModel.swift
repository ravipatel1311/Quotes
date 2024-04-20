//
//  ViewModel.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

@MainActor
class ViewModel {
    // MARK: - Dependencies
    @Injected var router: Router
    @Injected var networkServices: NetworkService
}
