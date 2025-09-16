//
//  Untitled.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//

import SwiftUI
struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        VStack{
            Image("nasalogo")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 120)
                .padding(.vertical, 32)
            
            VStack(spacing: 24){
                InputView(text: $email, placeholder: "name@example.com", title: "Email address").textInputAutocapitalization(.never)
                InputView(text: $fullname, placeholder: "John Doe", title: "Your Full Name")
                InputView(text: $password, placeholder: "password", isSecureField: true, title: "Password")
                InputView(text: $confirmPassword, placeholder: "confirm password", isSecureField: true,title: "Confirm your password")
    
            }
            .padding(.horizontal)
            .padding(.top, 1)
            
            Button {
                Task{
                    try await viewModel.createUser(withEmail: email, password: password, fullname: fullname)
                }
                
            } label: {
                HStack{
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                    

                }
                .foregroundStyle(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 24)
            
        }
        Spacer()
        
        Button{ 
            dismiss()
        } label: {
            HStack(spacing: 3){
                Text("Have an account?")
                Text("Sign In")
                    .fontWeight(.bold)
            }
            .font(.system(size: 14))
        }
                     
    }
}

#Preview {
    RegistrationView()
}

