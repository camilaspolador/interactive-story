//
//  MainButtonView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 30/07/23.
//

import SwiftUI

struct MainButtonView: View {
    var textColor: Color
    var backgroundColor: Color
    var textContent: String
    var allCornerRadius: Bool
    
    var body: some View {
        allCornerRadius
        ? AnyView(baseButton.cornerRadius(30))
        : AnyView(baseButton
            .cornerRadius(30, corners: .bottomLeft)
            .cornerRadius(30, corners: .bottomRight))
    }
    
    var baseButton: some View {
        HStack {
            Text(textContent)
                .font(.custom("ARP Display", size: 22.25))
                .foregroundColor(textColor)
                .lineSpacing(10)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
            Image(systemName: "chevron.right")
                .font(.system(size: 42.67))
                .foregroundColor(textColor)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 0)
        .frame(maxWidth: .infinity, maxHeight: 90.88)
        .background(backgroundColor)
    }
}

struct MainButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainButtonView(textColor: .brown, backgroundColor: .accentColor, textContent: "testeteste", allCornerRadius: false)
    }
}
