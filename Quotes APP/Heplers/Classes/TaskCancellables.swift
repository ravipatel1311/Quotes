//
//  TaskCancellables.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation

// MARK: - TaskCancellables
class TaskCancellables: Hashable {
    static func == (lhs: TaskCancellables, rhs: TaskCancellables) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    private var id: UUID = .init()
    private var task: Task<Void, Never>

    init(task: Task<Void, Never>) {
        self.task = task
    }

    deinit {
        self.task.cancel()
    }
}

extension Task where Success == Void, Failure == Never {
    func store(in tasks: inout Set<TaskCancellables>) {
        tasks.insert(TaskCancellables(task: self))
    }
}
