//
//  Product.swift
//  SwiftUIClones
//
//  Created by Riley Brookins on 7/27/24.
//

import Foundation

// MARK: - Welcome
struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let images: [String]
    let thumbnail: String
}
