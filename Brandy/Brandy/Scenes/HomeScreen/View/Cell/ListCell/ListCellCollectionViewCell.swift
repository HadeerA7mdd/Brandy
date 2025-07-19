//
//  ListCellCollectionViewCell.swift
//  Brandy
//
//  Created by Hader on 19/07/2025.
//

import UIKit

class ListCellCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productReviewCount: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productRate: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
