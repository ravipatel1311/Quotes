//
//  DataCell.swift
//  ASSIGNMENT-4
//
//  Created by user238811 on 4/19/24.


import UIKit

final class DataCell: UICollectionViewCell {
    //MARK: - @IBOutlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var viewBg: UIView!
    
    //MARK: - Properties
    var model: String? {
        didSet {
            loadData()
        }
    }
    
    //MARK: - Life-Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - @IBActions
    
    //MARK: - Functions
    private func loadData() {
        guard let model = model else { return }
        
        lblTitle.text = model
    }
}
