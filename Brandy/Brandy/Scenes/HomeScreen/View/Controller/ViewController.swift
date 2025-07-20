//
//  ViewController.swift
//  Brandy
//
//  Created by Hader on 17/07/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeCollection: UICollectionView!
    
    var homeViewModelProtocol: HomeViewModelProtocol = HomeViewModel()
    var isGridView = false
    var toggleButton: UIButton!
    var isSkeletonActive = false

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupLogoImg()
        homeViewModelProtocol.getProducts()
        bindViewModel()
        setupToggleButton()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       

    }
    
    
    func bindViewModel(){
        homeViewModelProtocol.bindSucessResultToViewController = { [weak self] in
            self?.hideSkeletonAndLoadData()
            self?.homeCollection.reloadData()
        }
        
        homeViewModelProtocol.bindErrorResultToViewController = { [weak self] msg in
            self?.hideSkeletonAndLoadData()
            print("errorr \(msg)")
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


