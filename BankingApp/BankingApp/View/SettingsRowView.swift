//
//  SettingsRowView.swift
//  BankingApp
//
//  Created by Sanzhar Imankulov on 9/16/25.
//

import SwiftUI

struct SettingsRowView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    var titleColor: Color = .black
    var body: some View{
        HStack(spacing: 12){
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundStyle(tintColor)
            Text(title)
                .font(.subheadline)
                .foregroundStyle(titleColor)
        }
    }
}

#Preview {
    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
}
