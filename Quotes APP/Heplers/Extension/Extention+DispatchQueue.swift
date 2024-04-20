//
//  Extention+DispatchQueue.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

public extension DispatchQueue {
    func after(time interval: TimeInterval, work: @escaping () -> Void) {
        asyncAfter(deadline: .now() + interval) {
            work()
        }
    }
}
