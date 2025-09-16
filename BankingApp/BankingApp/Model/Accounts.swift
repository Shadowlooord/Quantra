//
//  Accounts.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//

import Foundation

struct User: Codable, Identifiable {
    var id: String
    var balance: Double = 0.0
    var fullname: String
    var email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension User{
    static var TEST_USER = User(id: NSUUID().uuidString, balance: 222.2, fullname: "Alisher Iskander", email: "alisher@iskander.com")
}
