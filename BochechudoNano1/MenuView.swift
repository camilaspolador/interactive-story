//
//  InstructionsFirstView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 28/07/23.
//

import SwiftUI
import RiveRuntime

struct MenuView: View {
    @State var backgroundOffset: CGFloat = 0
    var manager: AppManager
    
    var body: some View {
        ZStack {
            VStack {
                TopNavigationView()
                    .zIndex(1)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            RiveViewModel(fileName: "star").view()
                .position(x: 580, y: -570)
                .scaleEffect(0.4)
                .ignoresSafeArea()
                .zIndex(-1)
            
            RiveViewModel(fileName: "star").view()
                .position(x: -500, y: 390)
                .scaleEffect(0.3)
                .ignoresSafeArea()
                .zIndex(-1)
            
            VStack {
                card
                Button {
                    withAnimation {
                        manager.start()
                    }
                } label: {
                    MainButtonView(textColor: .black, backgroundColor: Color("beigeeige"), textContent: "let's go", allCornerRadius: true)
                }
                .padding(.horizontal, 24)
                .padding(.top, 40)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .ignoresSafeArea()
            .zIndex(-2)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("grapeape"))
    }
    
    
    var card: some View {
        VStack {
            Text("Flow-up")
                .font(.custom("Brice", size: 40))
                .foregroundColor(Color("beigeeige"))
                .multilineTextAlignment(.center)
                .padding(.top, 110)
            HStack {
                RiveViewModel(fileName: "bochechudo1").view()
                Text("This is you")
                    .font(.custom("Brice", size: 20))
                    .foregroundColor(Color("beigeeige"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 16)
                    .padding(.trailing, 32)
            }
            Text("You are motivated to have better habits")
                .font(.custom("ARP Display", size: 15))
                .lineSpacing(12)
                .foregroundColor(Color("beigeeige"))
                .multilineTextAlignment(.center)
                .padding(.bottom, 24)
                .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: 500)
        .background(Color("reded"))
        .cornerRadius(30, corners: .bottomLeft)
        .cornerRadius(30, corners: .bottomRight)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(manager: AppManager.instance)
    }
}
