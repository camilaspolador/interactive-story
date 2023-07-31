//
//  TopNavigationView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 30/07/23.
//

import SwiftUI

struct TopNavigationView: View {
    var body: some View {
        Rectangle()
            .background(.ultraThinMaterial)
            .frame(maxWidth: .infinity, maxHeight: 60, alignment: .top)
            .ignoresSafeArea()
            .foregroundColor(Color("grapeape"))
            .opacity(0.85)
    }
}

struct TopNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavigationView()
    }
}
