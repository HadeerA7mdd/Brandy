//
//  Image+Extension.swift
//  Brandy
//
//  Created by Hader on 20/07/2025.
//

import Foundation
import UIKit
import SDWebImage

extension UIImageView {
    
    func setSdImage(urlImage: String) {
        if let url = URL(string: urlImage) {
            self.sd_setImage(with: URL(string: urlImage.addingPercentEncoding( withAllowedCharacters: .urlQueryAllowed) ?? ""),placeholderImage: UIImage(named: "logo"))
        } else {
            self.image = UIImage(named: "logo")
        }
    }
}
