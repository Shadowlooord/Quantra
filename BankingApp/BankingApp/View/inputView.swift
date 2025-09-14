//
//  inputView.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/12/25.
//

import SwiftUI
import Foundation

struct InputView: View {
    @Binding var text: String
    var placeholder: String
    var isSecureField: Bool = false
    var title: String
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
        }
    }
}
#Preview {
    InputView(text: .constant(""), placeholder: "name@example.com", isSecureField: false, title: "Email Address")
}
