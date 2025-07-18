//
//  Viewcontroller+EXT.swift
//  Brandy
//
//  Created by Hader on 17/07/2025.
//

import Foundation
import UIKit

extension UIViewController{
    func openURL(urlLink: String) {
        if let url = URL(string: urlLink) {
            UIApplication.shared.open(url)
        }
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
