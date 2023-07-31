//
//  AppManager.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 29/07/23.
//

import Combine

enum LevelEnum {
    case menu, first, second, third, forth, fifth, sixth, seventh, last
}
class AppManager: ObservableObject {
    @Published var level: LevelEnum = .menu
    var hasWakenUp: Bool = false
    var hasDoneSkincare: Bool = false
    var hasEaten: Bool = false
    var hasWorked: Bool = false
    var hasLunch: Bool = false
    var hasExcercised: Bool = false
    var hasRead: Bool = false
    
    var score: Int = 0
    
    static var instance = AppManager()
    
    func addScore(_ isFirstChoice: Bool) {
        if isFirstChoice {
            score += 1
        }
    }
    
    func start() {
        level = .first
        score = 0
    }
    
    func end() {
        level = .menu
        score = 0
    }
    
    func goToSecondLevel(isFirstChoice: Bool) {
        print("ir para o segundo level, acordou sem adiar? \(isFirstChoice)")
        hasWakenUp = isFirstChoice
        level = .second
        
        addScore(isFirstChoice)
    }
    
    func goToThirdLevel(isFirstChoice: Bool) {
        print("ir para o terceiro level, skin care? \(isFirstChoice)")
        hasDoneSkincare = isFirstChoice
        level = .third
        
        addScore(isFirstChoice)
    }

    func goToForthLevel(isFirstChoice: Bool) {
        print("ir para o terceiro level, comeu? \(isFirstChoice)")
        hasEaten = isFirstChoice
        level = .forth
        
        addScore(isFirstChoice)
    }
    func goToFifthLevel(isFirstChoice: Bool) {
        print("ir para o sexto level, comeu? \(isFirstChoice)")
        hasWorked = isFirstChoice
        level = .fifth
        
        addScore(isFirstChoice)
    }
    func goToSixthLevel(isFirstChoice: Bool) {
        print("ir para o terceiro level, comeu? \(isFirstChoice)")
        hasLunch = isFirstChoice
        level = .sixth
        
        addScore(isFirstChoice)
    }
    func goToSeventhLevel(isFirstChoice: Bool) {
        print("ir para o terceiro level, comeu? \(isFirstChoice)")
        hasExcercised = isFirstChoice
        level = .seventh
        
        addScore(isFirstChoice)
    }
    
    func goToTheEnd(isFirstChoice: Bool) {
        hasRead = isFirstChoice
        level = .last
    }
}
