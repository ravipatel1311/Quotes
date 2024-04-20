//
//  HomeVm.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

final class HomeVm: ViewModel {
    //MARK: - Properties
    private var disposeBag = Bag()
    private var output = AppSubject<Output>()
    
    //MARK: - Enums
    enum Input {
    }
    
    enum Output {
        case loader(isLoading: Bool)
        case showError(msg: String)
    }
    
    //MARK: - Functions
    func transform(input: AppAnyPublisher<Input>) -> AppAnyPublisher<Output> {
        input.weekSink(self) { strongSelf, event in }.store(in: &disposeBag)
        return output.eraseToAnyPublisher()
    }
}

