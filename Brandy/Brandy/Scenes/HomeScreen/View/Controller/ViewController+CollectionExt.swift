//
//  ViewController+CollectionExt.swift
//  Brandy
//
//  Created by Hader on 19/07/2025.
//

import UIKit
import SkeletonView


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate , SkeletonCollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeViewModelProtocol.getProductDataCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if isGridView {
            let cell = collectionView.dequeue(with: GridCellCollectionViewCell.self, for: indexPath)
            if let productt = homeViewModelProtocol.getProductByIndex(index: indexPath.row){
                cell.setupCell(productData: productt)
            }
            return cell
        } else {
            let cell = collectionView.dequeue(with: ListCellCollectionViewCell.self, for: indexPath)
            if let productt = homeViewModelProtocol.getProductByIndex(index: indexPath.row){
                cell.setupCell(productData: productt)
            }
            return cell
        }
    }
    
    
    func collectionSkeletonView(_ skeletonView: UICollectionView, cellIdentifierForItemAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return isGridView
        ? String(describing: GridCellCollectionViewCell.self)
        : String(describing: ListCellCollectionViewCell.self)
    }
    
    // Skeleton item count
    func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7 // fake loading count
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        homeViewModelProtocol.paginationAction(index: indexPath.row)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tappedd")
    }
}





