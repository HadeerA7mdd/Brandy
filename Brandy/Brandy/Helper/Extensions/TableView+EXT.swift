//
//  TableView+EXT.swift
//  Brandy
//
//  Created by Hader on 18/07/2025.
//

import UIKit

extension UICollectionView {
    
    func registerCellNib<Cell: UICollectionViewCell>(cellClass: Cell.Type) {
        let identifier = String(describing: Cell.self)
        let nib = UINib(nibName: identifier, bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: identifier)
    }
    
    func dequeue<Cell: UICollectionViewCell>(with type: Cell.Type, for indexPath: IndexPath) -> Cell {
        let identifier = String(describing: Cell.self)
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? Cell else {
            fatalError("Error: could not dequeue cell with identifier \(identifier)")
        }
        return cell
    }
}

