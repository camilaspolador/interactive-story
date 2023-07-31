//
//  InstructionsCardView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 26/07/23.
//

import SwiftUI
import RiveRuntime

struct InstructionsCardView: View {
    var data: StoryCardModel
    
    var body: some View {
        VStack {
            Spacer()
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 80)
                .padding(.bottom, 16)
            Text(data.title)
                .font(.custom("Brice", size: 29))
                .foregroundColor(data.textColor)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("grapeape"))
                .lineSpacing(10)
                .padding(.vertical, 8)
            Text(data.text)
                .font(.title2)
                .foregroundColor(data.textColor)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("grapeape"))
            Spacer()
            Text("choose the option dragging to the side")
                .font(.custom("ARP display", size: 20))
                .foregroundColor(data.textColor)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .foregroundColor(Color("grapeape"))
                .padding(.vertical, 16)
        }
        .padding(.top, 16)
        .padding(.bottom, 16)
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(data.color)
        .cornerRadius(30)
    }
}

struct InstructionsCardView_Previews: PreviewProvider {
    static var previews: some View {
        let data = StoryCardModel(level: "1.0", image: "sun", title: "It's early", text: "your alarm is ringing, and you have a long day ahead. You're feeling sleepy and finding it difficult to get up.", color: Color("yellowellow"), textColor: Color(.black))
        InstructionsCardView(data: data)
    }
}
