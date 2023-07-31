//
//  TheEndView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 30/07/23.
//

import SwiftUI

struct TheEndView: View {
    var data: EndMessageModel
    var manager: AppManager
    
    var body: some View {
        ZStack {
            VStack {
                TopNavigationView()
                    .zIndex(1)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            VStack(alignment: .leading) {
                
                Image(systemName: "quote.opening")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.vertical, 24)
                    .padding(.top, 8)
                Text(data.title)
                    .font(.custom("Brice", size: 24))
                    .foregroundColor(.white)
                    .padding(.bottom, 24)
                Text(data.text)
                    .font(.callout)
                    .foregroundColor(.white)
                    .lineSpacing(10)
                HStack {
                    Spacer()
                    Image(systemName: "quote.closing")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.trailing)
                        .padding(.top, 24)
                }
                Spacer()
                Button {
                    withAnimation {
                        manager.end()
                    }
                } label: {
                    MainButtonView(textColor: data.textButtonColor, backgroundColor: data.buttonColor, textContent: "start over", allCornerRadius: true)
                }
            }
            .padding(.horizontal, 24)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("grapeape"))
            .zIndex(-1)
        }
    }
}

struct TheEndView_Previews: PreviewProvider {
    static var previews: some View {
        let data = EndMessageModel.list[AppManager.instance.score]
        TheEndView(data: data, manager: AppManager.instance)
    }
}
