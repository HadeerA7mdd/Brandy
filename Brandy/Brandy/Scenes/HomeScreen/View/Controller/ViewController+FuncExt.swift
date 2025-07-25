//
//  ViewController+FuncExt.swift
//  Brandy
//
//  Created by Hader on 19/07/2025.
//

import UIKit


extension ViewController{
    
    // MARK: - collection delegate , dataSource and register custom cell
    
    func setupCollectionView() {
        homeCollection.dataSource = self
        homeCollection.delegate = self
        homeCollection.registerCellNib(cellClass: ListCellCollectionViewCell.self)
        homeCollection.registerCellNib(cellClass: GridCellCollectionViewCell.self)
        homeCollection.collectionViewLayout = createLayout()
    }
    
    // MARK: - setup nav bar icon and list / grid toggle button
    
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
        homeViewModelProtocol.getProducts()
        bindViewModel()
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
            layout.itemSize = CGSize(width: homeCollection.frame.width / 2.219, height: 344)
        } else {
            layout.itemSize = CGSize(width: homeCollection.frame.width, height: 156)
        }
        
        return layout
    }
   
    // MARK: - show / hide skelteon
    
    func showLoadingSkeleton() {
        isSkeletonActive = true
        homeCollection.isSkeletonable = true
        homeCollection.showAnimatedGradientSkeleton()
    }
    
    func hideSkeletonAndLoadData() {
        isSkeletonActive = false
        homeCollection.stopSkeletonAnimation()
        view.hideSkeleton()
        homeCollection.reloadData()
    }
    
    // MARK: - bind Data
    
    func bindViewModel(){
        homeViewModelProtocol.bindSucessResultToViewController = { [weak self] in
            self?.hideSkeletonAndLoadData()
            self?.homeCollection.reloadData()
        }
        
        homeViewModelProtocol.bindErrorResultToViewController = { [weak self] msg in
            self?.hideSkeletonAndLoadData()
            AlertView.showConfirmAlert(on: self ?? ViewController() , title: msg, message: "")
        }
        homeViewModelProtocol.showLoadingIndicator = { [weak self] isLoading in
            DispatchQueue.main.async { [weak self]  in
                if isLoading {
                    self?.showLoadingSkeleton()
                } else {
                    self?.hideSkeletonAndLoadData()
                }
            }
        }
    }
    
    
}
