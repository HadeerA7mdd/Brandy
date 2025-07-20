//
//  ProductDetailsVC+FuncExt.swift
//  Brandy
//
//  Created by Hader on 20/07/2025.
//

import UIKit

extension ProductDetailsViewController{
    
    func setupVcData(productData : Product){
        productPrice.text = "\(productData.price ?? 0.0)"
        productReviewCount.text = "(\(productData.rating?.count ?? 0))"
        productRate.text = "\(productData.rating?.rate ?? 0.0)"
        productTitle.text = productData.title ?? ""
        productImage.setSdImage(urlImage: productData.image ?? "")
        productDescrp.text = productData.description ?? ""
        productCategory.text = productData.category ?? ""
    }
    
}
