//
//  Teams.swift
//  4030_Final
//
//  Created by NMI Class on 4/14/25.
//

import SwiftUI
func random (max: Int) -> Int {
    return Int.random(in: 0..<max)
}

func newRandom (exclude: Int) -> Int {
    var newNumber = 0
    repeat {
        newNumber = Int.random(in: 0..<20)
    } while newNumber == exclude //breaks once newNumber is not the exclude value
    return newNumber
}

func findTeam (randomInt: Int) -> String {
    let team = teamNames[random(max: 3)][randomInt]
    return team
}

struct Teams: View {
    @State var start = false
    @State var reveal = false
    @State var next = false
    @State var isCorrect = false
    
    @StateObject var scoreManager = ScoreManager()
    
    let rightTeam = findTeam(randomInt: random(max: 20))
    
    var body: some View {
        //Sets up the intro screen
        Text("Let's see if you have ball knowledge!")
            .padding()
        if start == false {
            Button(action: {
                start = true
            }) {
                Text("Click to Start")
            }
        } else {
            EmptyView()
        }
        
        
        if start == true {            
            ScrollView(.horizontal) {
                //Displays 4 question cards
                HStack {
                    TeamQuestionView(scoreManager: scoreManager, correctTeam: rightTeam, incorrectTeamOne: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamTwo: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamThree: findTeam(randomInt: newRandom(exclude: random(max: 20))))
                    TeamQuestionView(scoreManager: scoreManager, correctTeam: findTeam(randomInt: random(max: 20)), incorrectTeamOne: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamTwo: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamThree: findTeam(randomInt: newRandom(exclude: random(max: 20))))
                    TeamQuestionView(scoreManager: scoreManager, correctTeam: findTeam(randomInt: random(max: 20)), incorrectTeamOne: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamTwo: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamThree: findTeam(randomInt: newRandom(exclude: random(max: 20))))
                    TeamQuestionView(scoreManager: scoreManager, correctTeam: findTeam(randomInt: random(max: 20)), incorrectTeamOne: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamTwo: findTeam(randomInt: newRandom(exclude: random(max: 20))), incorrectTeamThree: findTeam(randomInt: newRandom(exclude: random(max: 20))))
                }
            }
        }
        
        
    }
}
    
//Array of english, german and italian clubs
let teamNames = [["arsenal", "aston-villa", "brentford", "brighton", "burnley", "chelsea", "crystal-palace", "everton", "leeds-united", "leicester-city", "liverpool", "manchester-city", "manchester-united", "newcastle-united", "norwich-city", "southampton", "tottenham-hotspur", "watford", "west-ham-united", "wolves"], ["augsburg", "bayern", "bremen", "dortmund", "dusseldorf", "frankfurt", "freiburg", "furth", "hamburg", "hannover", "hertha-bsc-berlin", "hoffenheim", "leverkusen", "mainz", "moenchengladbach", "nuremburg", "redbull-leipzig", "schalke" , "stuttgart", "wolfsburg"],["ac-milan", "atalanta", "bologna", "cagliari", "empoli", "fiorentina", "genoa", "hellas-verona", "inter", "juventus", "lazio", "napoli", "roma", "salernitana", "sampdoria", "sassuolo", "spezia", "torino", "udinese", "venezia"]]

#Preview {
    Teams()
}
