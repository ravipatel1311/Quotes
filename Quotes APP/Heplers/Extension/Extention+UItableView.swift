//
//  Extention+UItableView.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import Foundation
import UIKit

extension UITableView {
    func deque<Cell: UITableViewCell>() -> Cell {
        let identifier = String(describing: Cell.self)
        guard let cell = dequeueReusableCell(withIdentifier: identifier) as? Cell
        else {
            fatalError("=====>Error in cell")
        }
        return cell
    }

    func reload() {
        UIView.transition(with: self, duration: 0.35, options: .transitionCrossDissolve) {
            queue.async {
                self.reloadData()
            }
        }
    }
}
