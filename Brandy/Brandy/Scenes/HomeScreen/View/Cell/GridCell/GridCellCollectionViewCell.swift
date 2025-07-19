//
//  GridCellCollectionViewCell.swift
//  Brandy
//
//  Created by Hader on 19/07/2025.
//

import UIKit

class GridCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productRate: UILabel!
    @IBOutlet weak var productReviewCount: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
