
//  BankingAppApp.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//
import FirebaseCore
import SwiftUI
// Use Firebase library to configure APIs
@main
struct BankingApp: App {
    @StateObject var viewModel = AuthViewModel()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
