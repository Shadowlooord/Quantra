//
//  ProfileView.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/16/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List{
            Section() {
                HStack{
                    Text("SI")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(.circle)
                    VStack(alignment: .leading, spacing:4){
                        Text("Sanzhar Imankulov")
                            .fontWeight(.semibold)
                            .font(.subheadline)
                            .padding(.top, 4)
                        Text("sanzhar.imankulov@nu.edu.kz")
                            .tint(Color(.systemGray3))
                            .font(.footnote )
                    }
                }
            }
            Section("General") {
                HStack {
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    Spacer()
                    Text("1.0.0")
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                }
            }
            Section("Account") {
                Button{
                    print("signing out")
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red, titleColor: .red)
                }
                Button{
                    print("deleting account")
                } label: {
                    SettingsRowView(imageName: "trash", title: "Delete account", tintColor: .red, titleColor: .red)
                }

            }
        }
    }
}

#Preview {
    ProfileView()
}
