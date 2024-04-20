//
//  SuccessVc.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.

import UIKit

final class SuccessVc: ViewController<SuccessVm> {
    //MARK: - @IBOutlets
    
    //MARK: - Properties
    private var disposeBag = Bag()
    private var input = AppSubject<SuccessVm.Input>()
    
    //MARK: - Life-Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = SuccessVm()
        bindViewModel()
    }
    
    //MARK: - @IBActions
    @IBAction func didTapButtonGotoHome(_ sender: Any) {
        input.send(.didTapGotoHome)
    }
    
    //MARK: - Functions
    private func bindViewModel() {
        viewModel?.transform(input: input.eraseToAnyPublisher()).weekSink(self) { strongSelf, event in
            switch event {
            case let .loader(isLoading):
                isLoading ? strongSelf.showHUD() : strongSelf.hideHUD()
            case let .showError(msg):
                strongSelf.showAlert(msg: msg)
            }
        }.store(in: &disposeBag)
    }
}
