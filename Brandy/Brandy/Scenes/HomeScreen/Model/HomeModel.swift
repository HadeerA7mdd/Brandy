//
//  HomeModel.swift
//  Brandy
//
//  Created by Hader on 20/07/2025.
//

struct Product: Codable {
    var id: Int?
    var title: String?
    var price: Double?
    var description: String?
    var category: String?
    var image: String?
    var rating: Rating?
}

struct Rating: Codable {
    var rate: Double?
    var count: Int?
}
