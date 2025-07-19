//
//  ViewController+CollectionExt.swift
//  Brandy
//
//  Created by Hader on 19/07/2025.
//

import UIKit
import SkeletonView


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate , SkeletonCollectionViewDataSource {
    
    // Real cell count
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }
    
    // Real cell creation
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if isGridView {
            let cell = collectionView.dequeue(with: GridCellCollectionViewCell.self, for: indexPath)
            return cell
        } else {
            let cell = collectionView.dequeue(with: ListCellCollectionViewCell.self, for: indexPath)
            return cell
        }
    }
    
    // Skeleton cell ID
    func collectionSkeletonView(_ skeletonView: UICollectionView, cellIdentifierForItemAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return isGridView
        ? String(describing: GridCellCollectionViewCell.self)
        : String(describing: ListCellCollectionViewCell.self)
    }
    
    // Skeleton item count
    func collectionSkeletonView(_ skeletonView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7 // fake loading count
    }
}





