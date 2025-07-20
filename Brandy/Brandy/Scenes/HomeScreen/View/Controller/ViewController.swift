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

    
}


