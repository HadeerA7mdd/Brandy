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

    override func viewDidLoad() {
        super.viewDidLoad()
        setupToggleButton()
        setupCollectionView()
        setupLogoImg()
    }


}

