//
//  ViewController.swift
//  Brandy
//
//  Created by Hader on 17/07/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeCollection: UICollectionView!
    
    private var isGridView = false
    private var toggleButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupToggleButton()
    }


}


// MARK: -  func extension

extension ViewController{
    
    func setupToggleButton() {
        toggleButton = UIButton(type: .custom)
        toggleButton.setImage(UIImage(named: "list"), for: .normal)
        toggleButton.addTarget(self, action: #selector(toggleLayout), for: .touchUpInside)
        toggleButton.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: toggleButton)

    }
    
    
    @objc func toggleLayout() {
        isGridView.toggle()
//        collectionView.setCollectionViewLayout(createLayout(), animated: true)
//        collectionView.reloadData()

        let imageName = isGridView ? "grid" : "list"
        toggleButton.setImage(UIImage(named: imageName), for: .normal)
    }

}
