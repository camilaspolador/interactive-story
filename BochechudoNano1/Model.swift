//
//  Model.swift
//  BochechudoNano1
//
//  Created by Camila Spolador on 27/07/23.
//

import SwiftUI

struct ChoiceCardModel: Identifiable {
    var animationFileName: String
    var title: String
    var buttonText: String
    var cardColor: Color
    var instructionText: String
    var textColor: Color
    let id = UUID()
    
    static var firstLevelChoiceCards: [ChoiceCardModel] = [
        ChoiceCardModel(animationFileName: "bochechudo1", title: "I will have a \nwonderful day", buttonText: "get up", cardColor: Color("yellowellow"), instructionText: "Nonetheless, you get up and make the bed.", textColor: Color(.black)),
        ChoiceCardModel(animationFileName: "bochechudo2", title: "I'm already \nlate. Help me!", buttonText: "snooze alarm", cardColor: Color("yellowellow"), instructionText: "Because of this, you end up snoozing the alarm multiple times, even though you know it's not a restful sleep. You finally get up, but you don't make the bed.", textColor: Color(.black)),
    ]
    
    static var secondLevelChoiceCards: [ChoiceCardModel] = [
        ChoiceCardModel(animationFileName: "bochechudo3", title: "I love taking \ncare of myself", buttonText: "skincare, please", cardColor: Color("blueue"), instructionText: "You take a warm shower, do your skincare and put on the best outfit, even if it's just for staying at home.", textColor: Color(.white)),
        ChoiceCardModel(animationFileName: "bochechudo4", title: "I'm\n ulgy", buttonText: "not today", cardColor: Color("blueue"), instructionText: "However, you feel too lazy to take care of yourself. You dress in the first clothes you see in the wardrobe", textColor: Color(.white)),
    ]
    static var thirdLevelChoiceCards: [ChoiceCardModel] = [
        ChoiceCardModel(animationFileName: "bochechudo5", title: "Breakfast is \nthe best meal", buttonText: "eat", cardColor: Color("reded"), instructionText: "So, you prepare a great breakfast with healthy foods. You dedicate some quality time to begin your day with tranquility.", textColor: Color(.white)),
        ChoiceCardModel(animationFileName: "bochechudo4", title: "I'm \nso hungry", buttonText: "don't eat", cardColor: Color("reded"), instructionText: "But you didn't allocate much time for it and end up preparing and eating everything in a hurry to start work.", textColor: Color(.white)),
    ]
    static var forthLevelChoiceCards: [ChoiceCardModel] = [
        ChoiceCardModel(animationFileName: "bochechudo7", title: "I love \nlearning", buttonText: "productive", cardColor: Color("pinkink"), instructionText: "But you commit yourself to being productive and learning new things. You also take short breaks to stretch and have some water.", textColor: Color(.black)),
        ChoiceCardModel(animationFileName: "bochechudo8", title: "I hate \nworking", buttonText: "procrastination", cardColor: Color("pinkink"), instructionText: "You lack motivation to be productive. You feel tense and tired. You don't even remember to take breaks to rest and drink water.", textColor: Color(.black)),
    ]
    static var fifthLevelChoiceCards: [ChoiceCardModel] = [
        ChoiceCardModel(animationFileName: "bochechudo9", title: "I will hava a \ngreat meal", buttonText: "have lunch", cardColor: Color("reded"), instructionText: "You take at least 1 hour to have a good meal and have a moment of calm from work.", textColor: Color(.white)),
        ChoiceCardModel(animationFileName: "bochechudo4", title: "I'm \nso hungry", buttonText: "don't eat", cardColor: Color("reded"), instructionText: "You have many tasks and don't eat properly, nor take a 1-hour lunch break; you just rush back to the hectic pace.", textColor: Color(.white)),
    ]
    static var sixthLevelChoiceCards: [ChoiceCardModel] = [
        ChoiceCardModel(animationFileName: "bochechudo11", title: "I want to be \nhealthy", buttonText: "excercise", cardColor: Color("blueue"), instructionText: "After a healthy and nutritious dinner, you exercise.", textColor: Color(.white)),
        ChoiceCardModel(animationFileName: "bochechudo4", title: "I'm very \ntired", buttonText: "rest", cardColor: Color("blueue"), instructionText: "Your dinner wasn't the best, and you don't feel motivated to do physical exercise.", textColor: Color(.white)),
    ]
    static var seventhLevelChoiceCards: [ChoiceCardModel] = [
        ChoiceCardModel(animationFileName: "bochechudo13", title: "Relaxing time \nis so good", buttonText: "good sleep", cardColor: Color("pinkink"), instructionText: "Before that, you do your skincare routine and set aside your phone to read a few pages of your book until you fall asleep.", textColor: Color(.black)),
        ChoiceCardModel(animationFileName: "bochechudo14", title: "Social media \nis bad for me", buttonText: "bad sleep", cardColor: Color("pinkink"), instructionText: "You feel extremely tired and just lie down. You end up using your phone until you fall asleep.", textColor: Color(.black)),
    ]
    
}

struct StoryCardModel: Identifiable {
    let id = UUID()
    var level: String
    var image: String
    var title: String
    var text: String
    var color: Color
    var textColor: Color
    
    static var firstLevelStoryCards: [StoryCardModel] = [
        StoryCardModel(level: "1.0", image: "sun", title: "It's early", text: "your alarm is ringing, and you have a long day ahead. You're feeling sleepy and finding it difficult to get up.", color: Color("yellowellow"), textColor: Color(.black))
    ]
    
    static var secondLevelStoryCards: [StoryCardModel] = [
        StoryCardModel(level: "1.1", image: "smiley", title: "Your mood is great", text: "and you feel proud of having woken up on time. You still need to take a warm shower, do your morning skincare routine and put on your best outfit, even if it's just for staying at home.", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.2", image: "sadface", title: "This already", text: "makes your day start strangely because you want to establish a routine with healthy habits, but you struggle with morning difficulties and bad mood. You still need to take a warm shower, do your morning skincare routine and put on your best outfit, even if it's just for staying at home.", color: Color("blueue"), textColor: Color(.white))
    ]
    
    static var thirdLevelStoryCards: [StoryCardModel] = [
        StoryCardModel(level: "1.1.1", image: "coffee", title: "Before starting", text: "   ", color: Color("reded"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.2", image: "coffee", title: "Your laziness", text: "becomes even greater when you remember that you still need to eat and have breakfast.", color: Color("reded"), textColor: Color(.white)),
        StoryCardModel(level: "1.2.1", image: "coffee", title: "Even though", text: "you're running a little late, you're dressed up and want to try to make today a good day. You still need to have your breakfast before starting to work.", color: Color("reded"), textColor: Color(.white)),
        StoryCardModel(level: "1.2.2", image: "coffee", title: "Your day", text: "is not starting in the best way, and you haven't even had breakfast yet. You feel hungry.", color: Color("reded"), textColor: Color(.white))
    ]
    static var forthLevelStoryCards: [StoryCardModel] = [
        StoryCardModel(level: "1.1.1.1", image: "computer", title: "Your day", text: "is off to an excellent start. Now it's time for work, and there are many things that need to be done. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "1.1.1.2", image: "computer", title: "Nevertheless,", text: "you know that you can still have a great day. After all, you woke up early and are ready to work. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "1.1.2.1", image: "computer", title: "Even though", text: "you are not well-groomed, you had a great cup of coffee in the morning, and now you need to work. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "1.1.2.2", image: "computer", title: "You had started", text: "your day on the right foot, but you realize that it's starting to unravel in the routine. And you still need to work. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "1.2.1.1", image: "computer", title: "Your day", text: "is off to an excellent start. It's already time for work, and there are many things that need to be done. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "1.2.1.2", image: "computer", title: "Your day", text: "is not starting off very well. But at least you're dressed up and ready for work. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "1.2.2.1", image: "computer", title: "You feel happy", text: "for having eaten well. The day still has a long way to go to be productive. Now it's time for work. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "1.2.2.2", image: "computer", title: "Nothing is", text: "going as planned. Your room is messy, you are disheveled, and hungry. You still need to fulfill your long workday. Are you willing to dedicate yourself to be productive and learn new things even amidst the busyness of daily life? Remembering to always take small breaks to rest and have some water?", color: Color("pinkink"), textColor: Color(.black)),
    ]
    
    static var fifthLevelStoryCards: [StoryCardModel] = [
        StoryCardModel(level: "1.1.1.1.1", image: "lunch", title: "Look!", text: "It's already lunchtime, and you didn't even notice. You should take at least 1 hour to pause and have a meal.", color: Color("reded"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.1.1.2", image: "lunch", title: "After counting", text: "the minutes, it's already lunchtime, and you are tired and wanting to stop working. You should take at least 1 hour to pause and have a meal.", color: Color("reded"), textColor: Color(.white)),
        
        StoryCardModel(level: "1.1.2.2.1", image: "lunch", title: "Your day", text: "had some less than ideal moments, but it's still going very well. It's already lunchtime, and you didn't even notice. You should take at least 1 hour to pause and have a meal.", color: Color("reded"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.2.2.2", image: "sun", title: "You realize", text: "that even though you started the day by getting some things right, for some reason, you're feeling demotivated. Now it's already time for lunch. You should take at least 1 hour to pause and have a meal.", color: Color("reded"), textColor: Color(.white)),
        
        StoryCardModel(level: "1.2.2.2.1", image: "lunch", title: "Look!", text: "It's already lunchtime, and you didn't even notice. You should take at least 1 hour to pause and have a meal.", color: Color("reded"), textColor: Color(.white)),
        StoryCardModel(level: "1.2.2.2.2", image: "lunch", title: "OMG", text: "You don't have any good habits in your day. It's lunchtime.  You should take at least 1 hour to pause and have a meal.", color: Color("reded"), textColor: Color(.white))
    ]
    static var sixthLevelStoryCards: [StoryCardModel] = [
        StoryCardModel(level: "1.1.1.1.1.1", image: "clouds", title: "You finished", text: "your workday and still have the evening routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.1.1.1.2", image: "clouds", title: "You've had", text: "a good day so far, even tired and hungry. You finish your workday and still have your evening routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.1.1.2.1", image: "clouds", title: "Despite having", text: "a good morning self-care routine, you had a stressful day at work, but at least you managed to take an hour to lunch. Your workday comes to an end, and you have your evening routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.1.1.2.2", image: "clouds", title: "Despite having", text: "a good morning self-care routine, you had a stressful day at work, and on top of that, you didn't have a calm lunch, feeling tired and hungry. Your workday comes to an end. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.2.2.1.1", image: "clouds", title: "You finished", text: "your workday and still have the evening routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.2.2.1.2", image: "clouds", title: "Despite having", text: "a decent morning self-care routine, you had a stressful day at work, and you didn't eat properly. You're already feeling weak and tired. Your workday ends and you have your evening routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.2.2.2.1", image: "clouds", title: "You were", text: "almost convinced that the day would go downhill, but you turned things around by eating well. Your workday comes to an end, and you have your nighttime routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.1.2.2.2.2", image: "clouds", title: "Your day", text: "started with things going well, but it unraveled more and more. You're already very hungry, tired, and stressed. Your workday comes to an end, and you have your evening routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.2.2.2.2.1", image: "clouds", title: "Not all is lost", text: "At least you had a good lunch. There's still a long way before this day ends! You still have your evening routine to fulfill. Do you have a healthy and nutritious dinner and do physical exercises, or not?", color: Color("blueue"), textColor: Color(.white)),
        StoryCardModel(level: "1.2.2.2.2.2", image: "clouds", title: "You're not", text: "doing well at all. This isn't right. You should nat least have a healthy and nutritious dinner and do physical exercises", color: Color("blueue"), textColor: Color(.white)),
    ]
    
    static var seventhLevelStoryCards: [StoryCardModel] = [
        StoryCardModel(level: "7.1", image: "moon", title: "By now", text: "it's the end of the day, and it's time for you to go to sleep. Before that, you do take some time for yourself. Is it better for you to read and do your nighttime skincare routine, or stay on your phone until you fall asleep?", color: Color("pinkink"), textColor: Color(.black)),
        StoryCardModel(level: "7.2", image: "moon", title: "But it's alright,", text: "you know that not every day you feel motivated to exercise. You took the opportunity to rest and have more leisure time. Finally, it's time for you to go to sleep. Before that, you do take some time for yourself. Is it better for you to read and do your nighttime skincare routine, or stay on your phone until you fall asleep?", color: Color("pinkink"), textColor: Color(.black)),
        
    ]
}

struct EndMessageModel: Identifiable {
    let id = UUID ()
    var title: String
    var text: String
    var buttonColor: Color
    var textButtonColor: Color
    
    static var list: [EndMessageModel] = [
        EndMessageModel(title: "Don't give up", text: "You are capable of being your best self.\nYou are capable of forming good habits.\nYou are capable of living the life of your dreams.\nStart tomorrow by improving a small habit. And the day after tomorrow, improve another one. You have the power to transform your life.\nYour success is the sum of small, consistent, and repeated actions.\nBe sure that this will make all the difference to your physical, mental, and emotional health.\nDon't be afraid to start.", buttonColor: Color("reded"), textButtonColor: .white),
        EndMessageModel(title: "Don't give up", text: "You are capable of being your best self.\nYou are capable of forming good habits.\nYou are capable of living the life of your dreams.\nStart tomorrow by improving another small habit. And then maintain consistency. You know you have the power to transform your life, and your success is the sum of these small repeated actions.\nReflect on your future and what you want for yourself. Consider if you are in the right place and what you can do for yourself.\nDon't be afraid to keep going.", buttonColor: Color("reded"), textButtonColor: .white),
        EndMessageModel(title: "Don't give up", text: "Continue following your habits from today, and perhaps add one more tomorrow!\nChange is progress, and it's okay not to have the best days every day.\nYou might be putting pressure on yourself, thinking you're not good enough, but you are! You are capable of living the life of your dreams, and you know you are already on the right path.\nReflect on what you want for your future and what you want for yourself. Maintain consistency and be perseverant in your goals.\nDon't be afraid to keep going.", buttonColor: Color("pinkink"), textButtonColor: .black),
        EndMessageModel(title: "Change is a progress", text: "and it's okay not to have the best days every day.\nWhen you feel like giving up, remember why you started.\nKeep going tomorrow, maintaining these habits, and perhaps add one more! You are capable and care about your emotional, physical, and mental well-being.\nYou might be putting pressure on yourself, thinking you're not good enough, but you are! You are capable of living the life of your dreams, and you know you are already on the right path.\nStay perseverant, keep on the path to success. Reflect on your future, your desires, and your goals.", buttonColor: Color("pinkink"), textButtonColor: .black),
        EndMessageModel(title: "You are presently", text: "on the path to your success. You already know that you are capable of being your best self. You already know that you can achieve your dream life.\nYou may be hard on yourself, but it's okay not to be perfect every day. You know you already have the power to cultivate good habits and are aware that this will lead you to be your best self.\nKeep being perseverant in your habits and goals. Don't give up on your objectives.\nAlways reflect on your future and what you can do to reach it. It's within your control, and you have the power to become anything you want.", buttonColor: Color("yellowellow"), textButtonColor: .black),
        EndMessageModel(title: "You are presently", text: "on the path to your success and are fully aware that you are capable of being your best self. You already know that you can achieve your dream life. You had a very good day and know that it can be even better.\nIt's okay not to be perfect every day. You know you already have the power to cultivate good habits and are aware that this will lead you to be your best self. You know it's never too late to improve and that there's always room to become even better.\nKeep being perseverant in your habits and goals. Don't give up on your objectives. You have the potential to have the best life you want.", buttonColor: Color("yellowellow"), textButtonColor: .black),
        EndMessageModel(title: "You are on the best path", text: "possible for your physical, mental, and emotional health.\nIt's okay not to be perfect; you already have the power to cultivate good habits that make you the best version of yourself and an inspiration to others.\nYou are perseverant in your habits and goals, and you know that change is progress, and it's okay to face difficulties along the way.\nStay this way. Don't give up on your objectives. You will always be a confident and energized person.", buttonColor: Color("blueue"), textButtonColor: .white),
        EndMessageModel(title: "You are on the best path", text: "possible for your physical, mental, and emotional health.\nYou are an extremely disciplined person, and you should feel proud of that. Your consistency and good habits are an inspiration to others.\nYour success won't be an accident; it will be the result of your consistent actions and hard work. Never let anyone tell you otherwise.\nStay on this path, and you will always be a confident and energized person.", buttonColor: Color("blueue"), textButtonColor: .white),
    ]
}
