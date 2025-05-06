//
//  TeamQuestionView.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 4/21/25.
//

import SwiftUI


struct TeamQuestionView: View {
    
    @ObservedObject var scoreManager: ScoreManager
    
    @State private var reveal = false
    @State var wrong: Bool = false
    @State var correctTeam: String
    @State var incorrectTeamOne: String
    @State var incorrectTeamTwo: String
    @State var incorrectTeamThree: String

    
    var body: some View {
        
        ZStack {
            /*
            Rectangle()
                .fill(Color.green)
                .frame(width:350, height: 350)
             */
                
            VStack {
                Text("Score = \(scoreManager.returnScore())")
                ZStack {
                    //places a blacked out team logo, and if the right choice is selected, switches to the normal logo
                    if reveal == false {
                        Image(correctTeam)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.black)
                            .frame(width: 150, height: 150)
                    } else {
                        Image(correctTeam)
                            .resizable()
                            .frame(width: 150, height: 150)
                    }
                    
                    if wrong == true {
                        //Covers the logo with a red square if the incorrect choice was selected
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: 150, height: 150)
                        Text("WRONG")
                    }
                }
                
                /*
                let choices = [correctTeam, incorrectTeamOne, incorrectTeamTwo, incorrectTeamThree]
                 */
                
                Grid {
                    GridRow{
                        Button(action: {
                            //isCorrect = true
                            reveal = true
                            scoreManager.addtoScore()
                        }) {
                            Text(correctTeam)
                                .fontWeight(.bold)
                        }
                        Button(action: {
                            wrong = true
                        }) {
                            Text(incorrectTeamOne)
                                .fontWeight(.bold)
                        }
                    }
                    GridRow{
                        Button(action: {
                            wrong = true
                        }) {
                            Text(incorrectTeamTwo)
                                .fontWeight(.bold)
                        }
                        Button(action: {
                            wrong = true
                        }) {
                            Text(incorrectTeamThree)
                                .fontWeight(.bold)
                        }
                    }
                }
            }
        }
        .frame(width: 350, height: 350)
        .background(Color.yellow)
        .cornerRadius(20)
        .shadow(radius: 10)

    }
    
}

#Preview {
    TeamQuestionView(scoreManager: ScoreManager(), correctTeam: "liverpool", incorrectTeamOne: "wolves", incorrectTeamTwo: "arsenal", incorrectTeamThree: "chelsea")
}
