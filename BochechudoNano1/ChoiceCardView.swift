//
//  ChoiceCardView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 26/07/23.
//

import SwiftUI
import RiveRuntime

struct ChoiceCardView: View {
    var data: ChoiceCardModel
    var callback: () -> Void
    
    var body: some View {
        VStack (spacing: 16) {
            VStack {
                Text(data.title)
                    .font(.custom("Brice", size: 29))
                    .multilineTextAlignment(.center)
                    .foregroundColor(data.cardColor)
                    .lineSpacing(10)
                
                RiveViewModel(fileName: data.animationFileName).view()

            }
            .padding(.top, 24)
            .padding(.bottom, 8)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color("beigeeige"))
            .cornerRadius(30, corners: .topLeft)
            .cornerRadius(30, corners: .topRight)
            
            Button {
                callback()
            } label: {
                MainButtonView(textColor: data.textColor, backgroundColor: data.cardColor, textContent: data.buttonText, allCornerRadius: false)
            }
        }
    }
}

struct ChoiceCardView_Previews: PreviewProvider {
    static var previews: some View {
        let data = ChoiceCardModel(animationFileName: "bochechudo1", title: "I will have a \nwonderful day", buttonText: "get up", cardColor: Color("yellowellow"), instructionText: "Nonetheless, you get up and make the bed.", textColor: Color(.black))
        ChoiceCardView(data: data) {
            print("eu sou a cami preview")
        }
    }
}
