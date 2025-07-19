//
//  ViewController+FuncExt.swift
//  Brandy
//
//  Created by Hader on 19/07/2025.
//

import UIKit


extension ViewController{
    
     func setupCollectionView() {
          homeCollection.dataSource = self
         homeCollection.delegate = self

          // Register both cell types
         homeCollection.registerCellNib(cellClass: ListCellCollectionViewCell.self)
         homeCollection.registerCellNib(cellClass: GridCellCollectionViewCell.self)

         homeCollection.collectionViewLayout = createLayout()
      }
    
    func setupToggleButton() {
        toggleButton = UIButton(type: .custom)
        toggleButton.setImage(UIImage(named: "grid"), for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleLayout), for: .touchUpInside)
        toggleButton.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: toggleButton)

    }
    
    func setupLogoImg() {
       let logoImage = UIImageView()
        logoImage.image = UIImage(named: "tabbar")
        logoImage.frame = CGRect(x: 0, y: 0, width: 43, height: 41)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: logoImage)

    }

    
    @objc func toggleLayout() {
        isGridView.toggle()
        let newLayout = createLayout()
        homeCollection.setCollectionViewLayout(newLayout, animated: false)
        newLayout.invalidateLayout()
        homeCollection.setContentOffset(.zero, animated: false)
        homeCollection.reloadData()
        let imageName = isGridView ?  "list" : "grid"
        toggleButton.setImage(UIImage(named: imageName), for: .normal)
    }


    private func createLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing

        if isGridView {
            layout.itemSize = CGSize(width: homeCollection.frame.width / 2.25, height: homeCollection.frame.height / 2.4)
        } else {
            layout.itemSize = CGSize(width: homeCollection.frame.width, height: homeCollection.frame.height / 3.2)
        }

        return layout
    }
}
