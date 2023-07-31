//
//  MainView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 26/07/23.
//

import SwiftUI
import RiveRuntime

struct LevelView: View {
    @State var backgroundOffset: CGFloat = 0
    var level: Level
    
    var body: some View {
        
        GeometryReader { g in
            HStack(spacing: -6) {
                InstructionsCardView(data: level.informationCard)
                    .frame(width: (g.size.width)-50, height: (g.size.height)-60)
                    .padding(.horizontal, 16)
                    .padding(.top, 55)
                
                ChoiceCardView(data: level.firstChoiceCard, callback: {
                    withAnimation {
                        level.firstChoiceCallback()
                    }
                })
                .frame(width: (g.size.width)-50, height: (g.size.height)-60)
                .padding(.top, 55)
                .padding(.trailing, 16)
                
                ChoiceCardView2(data: level.secondChoiceCard, callback: {
                    withAnimation {
                        level.secondChoiceCallback()
                    }
                })
                .frame(width: (g.size.width)-50, height: (g.size.height)-60)
                .padding(.top, 55)
                .padding(.trailing, 16)
                
                
            }
            .offset(x: -(self.backgroundOffset * (g.size.width-50)))
            
            topIndicationView
        }
        .gesture(
            DragGesture()
                .onEnded({ value in
                    withAnimation {
                        if value.translation.width > 10 {
                            
                            if self.backgroundOffset >= 1 {
                                self.backgroundOffset -= 1
                            }
                        } else if value.translation.width <= -10 {
                            if self.backgroundOffset <= 1 {
                                self.backgroundOffset += 1
                            }
                        }
                    }
                })
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(Color("grapeape"))
    }
    
    var topIndicationView: some View {
        ZStack {
            VStack {
                TopNavigationView()
                HStack {
                    ForEach(0...2, id: \.self) { i in
                        Circle()
                            .fill(level.informationCard.color)
                            .frame(width: self.backgroundOffset == CGFloat(i) ? 20 : 10, height: self.backgroundOffset == CGFloat(i) ? 20 : 10)
                            .overlay(
                                Circle()
                                    .fill(level.informationCard.color)
                            )
                            .padding(.horizontal, 6)
                    }
                }
            }
            
            RiveViewModel(fileName: "star").view()
                .position(x: 70, y: 40)
                .scaleEffect(1.4)
                .ignoresSafeArea()
                .zIndex(-1)
        }
        .frame(maxWidth: .infinity, maxHeight: 40)
    }
}

struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView(level: Level.first)
    }
}
