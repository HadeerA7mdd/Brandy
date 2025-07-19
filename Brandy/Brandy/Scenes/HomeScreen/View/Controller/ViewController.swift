//
//  ViewController.swift
//  Brandy
//
//  Created by Hader on 17/07/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeCollection: UICollectionView!
    
     var isGridView = false
     var toggleButton: UIButton!
    var isSkeletonActive = false

    override func viewDidLoad() {
        super.viewDidLoad()
        setupToggleButton()
        setupCollectionView()
        setupLogoImg()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showLoadingSkeleton()
    }

    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 50) { [self] in
            hideSkeletonAndLoadData()
        }
    }
}

