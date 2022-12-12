//
//  MorningSS.swift
//  ego-app
//
//  Created by Augustin Coman on 24/03/2022.
//

import Foundation
import SwiftUI

// structure contains all morning habits functions
struct MorningHabits {
    
    // -- maybe turn wakeUpTime into a time type or just take time as input
    // -- and separate hour and just compare based on that
    
    // function returns score based on wake up time
    func wakeUp(wakeUpTime: Int) -> Int {
        
        // checks if value of wakeUpTime is negative
        if wakeUpTime < 0 {
            exit(0)
        }
        
        // -- could make a for loop for i in 0..24 for all 24 hours
        // -- or just make it 6..12 and compare to i
        // returns score
        if [4, 5].contains(wakeUpTime) {
            return 50
        } else if wakeUpTime == 6 {
            return 30
        } else if wakeUpTime == 7 {
            return 20
        } else if [8, 9].contains(wakeUpTime) {
            return 10
        // if you wake up between 9 and 12 there's no points
        } else if wakeUpTime < 12 {
            return 0
        }
        
        // negative productivity points for waking up after noon [ or too early ]
        return -5
    }
    
    // function returns score based on morning exercise
    func exMorning() -> Int {
        // variable used to count total score for exercising
        var EMscore: Int = 0
        var response: Bool
        
        print("So, did you do any? (y for yes; n for no) \n")
        
        if let YoN = readLine() {
            
            // if we get input we continue
            response = YesOrNo().ynQ(response: YoN)
            if response == true {
                
                // -- maybe make in drop down menu of exercises to chose from
                // question to get specific type of exercise
                print("Ok, good! What exactly did you do? (s for stretch; r for running; sr for both)\n")
                
                if let exSpec = readLine() {
                    
                    // if we get input for the type of activity we continue
                    
                    // for stretch
                    if Array(exSpec).contains("s") {
                        EMscore += 10
                    }
                    // for morning run
                    if Array(exSpec).contains("r") {
                        EMscore += 30
                    }
                    
                }
                
            }
            
        } else {
            
            // else we skip exercise
            print("Umm... no response so dead...")
        }
        
        return EMscore
        
    }
    
    // function returns score based on mindfulness exercised
    func mindMorning() -> Int {
        var MMscore: Int = 0
        
        var response: Bool
        
        print("So, did you practice any? (y for yes; n for no)")
        
        if let YoN = readLine() {
            
            // if we get input we continue
            response = YesOrNo().ynQ(response: YoN)
            if response == true {
                
                // -- maybe make in drop down menu of activities to chose from
                // question to get specific type of mindfulness activity
                print("Ok, good! What exactly did you do? (j for journaling; m for meditation, jm for both)")
                
                if let mindSpec = readLine() {
                    
                    // if we get input for the type of activity we continue
                    
                    // for journaling
                    if Array(mindSpec).contains("s") {
                        MMscore += 20
                    }
                    // for meditation
                    if Array(mindSpec).contains("r") {
                        MMscore += 20
                    }
                    
                }
                
            }
            
        } else {
            
            // else we skip exercise
            print("Umm... no response so dead...")
        }
        
        return MMscore
    }
    
    // function returns score based on hygiene exercised
    func hygiMorning() -> Int {
        
        var HMscore : Int = 0
        var response: Bool
        
        // ------------------------------------------
        // brushig teeth
        print("Did you brush your teeth? Be honest! (y for yes; n for no)")
        
        if let YoN = readLine() {
            
            // if we get input we continue
            response = YesOrNo().ynQ(response: YoN)
            if response == true { HMscore += 10 } else { HMscore -= 10 }
            
        } else {
            
            // else we skip exercise
            print("Umm... no response so dead...")
        }
        
        // ------------------------------------------
        // shower
        print("Did you shower this morning? (y for yes; n for no)")
        
        if let YoN = readLine() {
            
            // if we get input we continue
            response = YesOrNo().ynQ(response: YoN)
            if response == true {
                print("How about the heat of the shower? (h - hot; c - cold; hc - hot and cold n - normal)")
                
                if let showerSpec = readLine() {
                    
                    // if we get input we continue
                    if Array(showerSpec).contains("h") {
                        HMscore += 15
                    }
                    if Array(showerSpec).contains("c") {
                        HMscore += 25
                    }
                    if showerSpec == "n" {
                        HMscore += 10
                    }
                }
            }
            
        } else {
            
            // else we skip exercise
            print("Umm... no response so dead...")
        }
        
        // ------------------------------------------
        // shave
        print("Did you shave? (y for yes; n for no)")
        
        if let YoN = readLine() {
            
            // if we get input we continue
            response = YesOrNo().ynQ(response: YoN)
            if response == true {
                HMscore += 25
            }
            
        } else {
            
            // else we skip exercise
            print("Umm... no response so dead...")
        }
        
        
        return HMscore
        
    }
    
    // function returns score based on weight loss [ if present ]
    func weightDaily() -> Int {
        
        var response: Bool
        
        print("Did you weigh yourself this morning? (y for yes; n for no)")
        
        if let YoN = readLine() {
            
            // if we get input we continue
            response = YesOrNo().ynQ(response: YoN)
            if response == true {
                
                // if we get input we continue with weight
                print("How much do you weigh?")
                
                if let response = readLine() {
                    if let weight = Int(response) { return weight }
                }
                
            }
            
        } else {
            
            // else we skip exercise
            print("Umm... no response so dead...")
        }
        
        return 0
    }
    
}

// structure gets morning results
struct MorningRecap {
    
    // store all scores and total
    // return total score
    
}
