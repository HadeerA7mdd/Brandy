//
//  ProductDetailsViewController.swift
//  Brandy
//
//  Created by Hader on 20/07/2025.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    @IBOutlet weak var productDescrp: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productReviewCount: UILabel!
    @IBOutlet weak var productRate: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productCategory: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var scrollview: UIScrollView!
    
    var productDetails : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let proDetials = productDetails{
            setupVcData(productData: proDetials)
        }
    }


}
