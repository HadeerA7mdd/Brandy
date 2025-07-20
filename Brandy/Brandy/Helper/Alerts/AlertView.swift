//
//  AlertView.swift
//  Brandy
//
//  Created by Hader on 17/07/2025.
//

import Foundation
import UIKit

class AlertView {
    
    class func showConfirmAlert(on viewController: UIViewController, title: String, message: String, confirmTitle: String = "OK", confirmHandler: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: confirmTitle, style: .default) { _ in
            confirmHandler?()
        }
 
        alertController.addAction(confirmAction)
        viewController.present(alertController, animated: true, completion: nil)
    }
}
