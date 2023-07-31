//
//  LevelModel.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 29/07/23.
//

import Foundation

class Level {
    var firstChoiceCard: ChoiceCardModel
    var secondChoiceCard: ChoiceCardModel
    
    var informationCard: StoryCardModel
    
    var firstChoiceCallback: () -> Void
    var secondChoiceCallback: () -> Void
    
    init(firstChoiceCard: ChoiceCardModel, secondChoiceCard: ChoiceCardModel, informationCard: StoryCardModel, firstChoiceCallback: @escaping () -> Void, secondChoiceCallback: @escaping () -> Void) {
        self.firstChoiceCard = firstChoiceCard
        self.secondChoiceCard = secondChoiceCard
        self.informationCard = informationCard
        self.firstChoiceCallback = firstChoiceCallback
        self.secondChoiceCallback = secondChoiceCallback
    }
    
    
    static var first: Level {
        let choiceCards = ChoiceCardModel.firstLevelChoiceCards
        let textCard = StoryCardModel.firstLevelStoryCards
        
        return Level(
            firstChoiceCard: choiceCards[0],
            secondChoiceCard: choiceCards[1],
            informationCard: textCard.first!,
            firstChoiceCallback: {
                AppManager.instance.goToSecondLevel(isFirstChoice: true)
            },
            secondChoiceCallback: {
                AppManager.instance.goToSecondLevel(isFirstChoice: false)
            }
        )
    }
    
    static var second: Level {
        let choiceCards = ChoiceCardModel.secondLevelChoiceCards
        let textCards = StoryCardModel.secondLevelStoryCards
        
        let informationCard = AppManager.instance.hasWakenUp ? textCards[0] : textCards[1]
        
        return Level(
            firstChoiceCard: choiceCards[0],
            secondChoiceCard: choiceCards[1],
            informationCard: informationCard,
            firstChoiceCallback: {
                print("fez a skin care")
                AppManager.instance.goToThirdLevel(isFirstChoice: true)
            },
            secondChoiceCallback: {
                print("não fez a skin care")
                AppManager.instance.goToThirdLevel(isFirstChoice: false)
            }
        )
    }
    
    static var third: Level {
        let choiceCards = ChoiceCardModel.thirdLevelChoiceCards
        let textCards = StoryCardModel.thirdLevelStoryCards
        
        var informationCard: StoryCardModel
        
        let hasWakenUp = AppManager.instance.hasWakenUp
        let hasDoneSkincare = AppManager.instance.hasDoneSkincare

        if hasWakenUp && hasDoneSkincare {
            informationCard = textCards[0]
        } else if hasWakenUp {
            informationCard = textCards[1]
        }
        else if hasDoneSkincare {
            informationCard = textCards[2]
        }
        else {
            informationCard = textCards[3]
        }
        
        return Level(
            firstChoiceCard: choiceCards[0],
            secondChoiceCard: choiceCards[1],
            informationCard: informationCard,
            firstChoiceCallback: {
                AppManager.instance.goToForthLevel(isFirstChoice: true)
            },
            secondChoiceCallback: {
                AppManager.instance.goToForthLevel(isFirstChoice: false)
            }
        )
    }
    
    static var forth: Level {
        let choiceCards = ChoiceCardModel.forthLevelChoiceCards
        let textCards = StoryCardModel.forthLevelStoryCards
        
        var informationCard: StoryCardModel
        
        let hasWakenUp = AppManager.instance.hasWakenUp
        let hasDoneSkincare = AppManager.instance.hasDoneSkincare
        let hasEaten = AppManager.instance.hasEaten

        if hasWakenUp && hasDoneSkincare && hasEaten {
            informationCard = textCards[0]
        } else if hasWakenUp && hasDoneSkincare {
            informationCard = textCards[1]
        }
        else if hasWakenUp && hasEaten {
            informationCard = textCards[2]
        }
        else if hasWakenUp {
            informationCard = textCards[3]
        }
        else if hasDoneSkincare && hasEaten {
            informationCard = textCards[4]
        }
        else if hasDoneSkincare {
            informationCard = textCards[5]
        }
        else if hasEaten {
            informationCard = textCards[6]
        } else {
            informationCard = textCards[7]
        }
        
        return Level(
            firstChoiceCard: choiceCards[0],
            secondChoiceCard: choiceCards[1],
            informationCard: informationCard,
            firstChoiceCallback: {
                AppManager.instance.goToFifthLevel(isFirstChoice: true)
            },
            secondChoiceCallback: {
                AppManager.instance.goToFifthLevel(isFirstChoice: false)
            }
        )
    }
    
    static var fifth: Level {
        let choiceCards = ChoiceCardModel.fifthLevelChoiceCards
        let textCards = StoryCardModel.fifthLevelStoryCards
        
        var informationCard: StoryCardModel
        
        let hasWakenUp = AppManager.instance.hasWakenUp
        let hasDoneSkincare = AppManager.instance.hasDoneSkincare
        let hasEaten = AppManager.instance.hasEaten
        let hasWorked = AppManager.instance.hasWorked

        if hasWakenUp && hasDoneSkincare && hasEaten && hasWorked {
            informationCard = textCards[0]
        } else if hasWakenUp && hasDoneSkincare && hasEaten {
            informationCard = textCards[1]
        } else if hasWakenUp && hasDoneSkincare && hasWorked {
            informationCard = textCards[0]
        } else if hasWakenUp && hasDoneSkincare {
            informationCard = textCards[1]
        } else if hasWakenUp && hasEaten && hasWorked {
            informationCard = textCards[0]
        } else if hasWakenUp && hasEaten {
            informationCard = textCards[1]
        } else if hasWakenUp && hasWorked {
            informationCard = textCards[2]
        } else if hasWakenUp {
            informationCard = textCards[3]
        } else if hasDoneSkincare && hasEaten && hasWorked {
            informationCard = textCards[0]
        } else if hasDoneSkincare && hasEaten {
            informationCard = textCards[1]
        } else if hasDoneSkincare && hasWorked {
            informationCard = textCards[2]
        } else if hasDoneSkincare {
            informationCard = textCards[3]
        } else if hasEaten && hasWorked {
            informationCard = textCards[2]
        } else if hasEaten {
            informationCard = textCards[3]
        } else if hasWorked {
            informationCard = textCards[4]
        } else {
            informationCard = textCards[5]
        }
        
        return Level(
            firstChoiceCard: choiceCards[0],
            secondChoiceCard: choiceCards[1],
            informationCard: informationCard,
            firstChoiceCallback: {
                AppManager.instance.goToSixthLevel(isFirstChoice: true)
            },
            secondChoiceCallback: {
                AppManager.instance.goToSixthLevel(isFirstChoice: false)
            }
        )
    }
    
    static var sixth: Level {
        let choiceCards = ChoiceCardModel.sixthLevelChoiceCards
        let textCards = StoryCardModel.sixthLevelStoryCards
        
        var informationCard: StoryCardModel
        
        let hasWakenUp = AppManager.instance.hasWakenUp
        let hasDoneSkincare = AppManager.instance.hasDoneSkincare
        let hasEaten = AppManager.instance.hasEaten
        let hasWorked = AppManager.instance.hasWorked
        let hasLunch = AppManager.instance.hasLunch

        if hasWakenUp && hasDoneSkincare && hasEaten && hasWorked && hasLunch {
            informationCard = textCards[0]
        } else if hasWakenUp && hasDoneSkincare && hasEaten && hasWorked {
            informationCard = textCards[1]
        } else if hasWakenUp && hasDoneSkincare && hasWorked && hasLunch {
            informationCard = textCards[2]
        } else if hasWakenUp && hasDoneSkincare && hasWorked {
            informationCard = textCards[3]
        } else if hasWakenUp && hasDoneSkincare && hasLunch {
            informationCard = textCards[0]
        } else if hasWakenUp && hasDoneSkincare && hasWorked {
            informationCard = textCards[1]
        } else if hasWakenUp && hasDoneSkincare && hasLunch {
            informationCard = textCards[2]
        } else if hasWakenUp && hasDoneSkincare {
            informationCard = textCards[3]
        } else if hasWakenUp && hasEaten && hasWorked && hasLunch {
            informationCard = textCards[0]
        } else if hasWakenUp && hasEaten && hasWorked {
            informationCard = textCards[1]
        } else if hasWakenUp && hasEaten && hasLunch {
            informationCard = textCards[2]
        } else if hasWakenUp && hasEaten {
            informationCard = textCards[3]
        } else if hasWakenUp && hasWorked && hasLunch {
            informationCard = textCards[4]
        } else if hasWakenUp && hasWorked {
            informationCard = textCards[5]
        } else if hasWakenUp && hasLunch {
            informationCard = textCards[6]
        } else if hasWakenUp {
            informationCard = textCards[7]
        } else if hasDoneSkincare && hasEaten && hasWorked && hasLunch {
            informationCard = textCards[0]
        } else if hasDoneSkincare && hasEaten && hasWorked {
            informationCard = textCards[1]
        } else if hasDoneSkincare && hasEaten && hasLunch {
            informationCard = textCards[2]
        } else if hasDoneSkincare && hasEaten {
            informationCard = textCards[3]
        } else if hasDoneSkincare && hasWorked && hasLunch {
            informationCard = textCards[0]
        } else if hasDoneSkincare && hasWorked {
            informationCard = textCards[1]
        } else if hasDoneSkincare && hasLunch {
            informationCard = textCards[4]
        } else if hasDoneSkincare {
            informationCard = textCards[5]
        } else if hasEaten && hasWorked && hasLunch {
            informationCard = textCards[0]
        } else if hasEaten && hasWorked {
            informationCard = textCards[1]
        } else if hasEaten && hasLunch {
            informationCard = textCards[4]
        } else if hasEaten {
            informationCard = textCards[5]
        } else if hasWorked && hasLunch {
            informationCard = textCards[0]
        } else if hasWorked {
            informationCard = textCards[1]
        } else if hasLunch {
            informationCard = textCards[8]
        } else {
            informationCard = textCards[9]
        }
        
        return Level(
            firstChoiceCard: choiceCards[0],
            secondChoiceCard: choiceCards[1],
            informationCard: informationCard,
            firstChoiceCallback: {
                AppManager.instance.goToSeventhLevel(isFirstChoice: true)
            },
            secondChoiceCallback: {
                AppManager.instance.goToSeventhLevel(isFirstChoice: false)
            }
        )
    }
    
    static var seventh: Level {
        let choiceCards = ChoiceCardModel.seventhLevelChoiceCards
        let textCards = StoryCardModel.seventhLevelStoryCards
        
        var informationCard: StoryCardModel
        
        let hasExcercised = AppManager.instance.hasExcercised

        if hasExcercised {
            informationCard = textCards[0]
        } else {
            informationCard = textCards[1]
        }
        
        return Level(
            firstChoiceCard: choiceCards[0],
            secondChoiceCard: choiceCards[1],
            informationCard: informationCard,
            firstChoiceCallback: {
                AppManager.instance.goToTheEnd(isFirstChoice: true)
            },
            secondChoiceCallback: {
                AppManager.instance.goToTheEnd(isFirstChoice: false)
            }
        )
    }
}
