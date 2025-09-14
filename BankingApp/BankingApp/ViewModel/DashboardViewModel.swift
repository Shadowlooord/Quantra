//
//  DashboardViewModel.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//

import Foundation

class DashboardViewModel: ObservableObject {
    @Published var transactionList: [Transaction] = []
    @Published var balance: Double = 0.0
    
    
    
    
    func addTransaction(_ transaction: Transaction){
        transactionList.append(transaction)
    }
    func calculateBalance(_ transacList: [Transaction]){
        balance = transacList.reduce(into: 0, { transactionSum, transactionAmount in
            transactionSum += transactionAmount.amount
        })
    }
}

