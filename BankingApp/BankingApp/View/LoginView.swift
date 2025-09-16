//
//  LoginView.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
                
                Image("nasalogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)
                    .padding(.vertical, 32)
                
                VStack(spacing: 24){
                    InputView(text: $email, placeholder: "name@example.com", title: "Email address").textInputAutocapitalization(.never)
                    InputView(text: $password, placeholder: "password", isSecureField: true, title: "Password")
                    
        
                }
                .padding(.horizontal)
                .padding(.top,1)
                
                Button {
                    Task{ try await
                        viewModel.signIn(withEmail: email, password: password)
                    }
                } label: {
                    HStack{
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                        

                    }
                    .foregroundStyle(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)
                
                Spacer()
                
                NavigationLink{
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack{
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
