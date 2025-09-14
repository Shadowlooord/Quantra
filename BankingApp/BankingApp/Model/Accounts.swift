//
//  Accounts.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//

import Foundation

struct Accounts: Codable, Identifiable {
    var id = UUID()
    var login: String
    var balance: Double
}
