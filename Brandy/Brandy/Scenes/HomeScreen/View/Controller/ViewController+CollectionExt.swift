//
//  ViewController+CollectionExt.swift
//  Brandy
//
//  Created by Hader on 19/07/2025.
//

import UIKit


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if isGridView {
            print("🟦 GridCell for index: \(indexPath.item)")
            let cell = collectionView.dequeue(with: GridCellCollectionViewCell.self, for: indexPath)
            return cell
        } else {
            print("🟥 ListCell for index: \(indexPath.item)")
            let cell = collectionView.dequeue(with: ListCellCollectionViewCell.self, for: indexPath)
            return cell
        }
    }

}
