//
//  User.swift
//  SwiftUIClones
//
//  Created by Riley Brookins on 7/27/24.
//

import Foundation


// MARK: - Welcome
struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

// MARK: - User
struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let birthDate: String
    let image: String
    let height, weight: Double
}
