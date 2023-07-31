//
//  BochechudoNano1App.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 26/07/23.
//

import SwiftUI

@main
struct BochechudoNano1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    for name in UIFont.familyNames {
                        print(name)
                    }
                }
        }
    }
}
