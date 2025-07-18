//
//  AlertView.swift
//  Brandy
//
//  Created by Hader on 17/07/2025.
//

import Foundation
import UIKit

class AlertView {
    
    class func showConfirmAlert(on viewController: UIViewController, title: String, message: String, confirmTitle: String = "OK", cancelTitle: String = "Cancel", confirmHandler: (() -> Void)? = nil, cancelHandler: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let confirmAction = UIAlertAction(title: confirmTitle, style: .default) { _ in
            confirmHandler?()
        }
        let cancelAction = UIAlertAction(title: cancelTitle, style: .cancel) { _ in
            cancelHandler?()
        }
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        viewController.present(alertController, animated: true, completion: nil)
    }
}
