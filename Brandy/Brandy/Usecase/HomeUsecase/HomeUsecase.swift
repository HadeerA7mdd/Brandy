//
//  HomeUsecase.swift
//  Brandy
//
//  Created by Hader on 20/07/2025.
//

import UIKit
import Alamofire


class HomeUsecase{
    
    func getHomeProduct(page: Int,
                   callBack: @escaping (Result<[Product], Error>) -> Void) {
        
        Request.request(url: URLs.Instance.getHomeProducts(limit: page),
                        save: false,
                        method: .get,
                        parameters: nil,
                        encoding: URLEncoding.default,
                        headers: URLs.Instance.getHeader(withContent: false),
                        callBack: callBack)
    }
    
    
}

