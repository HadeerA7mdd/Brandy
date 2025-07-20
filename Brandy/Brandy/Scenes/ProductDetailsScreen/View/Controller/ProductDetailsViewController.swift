//
//  ProductDetailsViewController.swift
//  Brandy
//
//  Created by Hader on 20/07/2025.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    @IBOutlet weak var imgHeight: NSLayoutConstraint!
    @IBOutlet weak var productDescrp: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productReviewCount: UILabel!
    @IBOutlet weak var productRate: UILabel!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productCategory: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var scrollview: UIScrollView!
    
    var productDetails : Product?
    let maxImageHeight: CGFloat = 440
     let minImageHeight: CGFloat = 120
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let proDetials = productDetails{
            setupVcData(productData: proDetials)
        }
    }


}



extension ProductDetailsViewController :UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.y

        // Only shrink, never expand
        let newHeight = max(minImageHeight, maxImageHeight - offset)
        imgHeight.constant = newHeight
        UIView.animate(withDuration: 0.1) {
            self.view.layoutIfNeeded()
        }
    }
}
