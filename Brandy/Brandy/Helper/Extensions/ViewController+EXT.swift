//
//  Viewcontroller+EXT.swift
//  Brandy
//
//  Created by Hader on 17/07/2025.
//

import Foundation
import UIKit

extension UIViewController{
    func push(_ vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
