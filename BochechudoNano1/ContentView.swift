//
//  ContentView.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 26/07/23.
//

import SwiftUI
import RiveRuntime

struct ContentView: View {
    @ObservedObject var manager = AppManager.instance
    
    var body: some View {
        VStack {
            switch manager.level {
            case .first:
                LevelView(level: Level.first).transition(.push(from: .trailing))
            case .second:
                LevelView(level: Level.second).transition(.push(from: .trailing))
            case .third:
                LevelView(level: Level.third).transition(.push(from: .trailing))
            case .forth:
                LevelView(level: Level.forth).transition(.push(from: .trailing))
            case .fifth:
                LevelView(level: Level.fifth).transition(.push(from: .trailing))
            case .sixth:
                LevelView(level: Level.sixth).transition(.push(from: .trailing))
            case .seventh:
                LevelView(level: Level.seventh).transition(.push(from: .trailing))
            case .last:
                TheEndView(data: EndMessageModel.list[manager.score], manager: manager).transition(.push(from: .trailing))
            case .menu:
                MenuView(manager: manager).transition(.push(from: .trailing))
            }
        }
            .background(Color("grapeape"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
