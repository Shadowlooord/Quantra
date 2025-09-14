//
//  Transaction.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//
import Foundation

struct Transaction: Codable,Identifiable {
    var id = UUID()
    let transactionDate: Date
    var description: String
    var amount: Double
    var type: transactionType
}


enum transactionType: String, Codable{
    case income  = "Income"
    case expense = "Expense"
}
