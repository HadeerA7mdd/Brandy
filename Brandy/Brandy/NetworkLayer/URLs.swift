//
//  URLs.swift
//  Brandy
//
//  Created by Hader on 18/07/2025.
//
import Foundation
import Alamofire

class URLs {
    static let Instance = URLs()
    private init() {}
    
        func getHeader(withContent: Bool) -> HTTPHeaders {
            var header: [HTTPHeader] = [
                .authorization(bearerToken:"")
            ]
            if withContent {
                header.append(HTTPHeader.contentType("application/json"))
                header.append(HTTPHeader.accept("application/json"))
            }
            return HTTPHeaders(header)
        }
    

    
    let url = "https://fakestoreapi.com/"
    

    func getHomeProducts(limit : Int) -> String {
        return url + "products?imit=\(limit)"
    }


    

}
