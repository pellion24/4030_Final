//
//  Players.swift
//  4030_Final
//
//  Created by NMI Class on 4/14/25.
//

import SwiftUI

struct Players: View {
    @State private var selectionMade = false
    @State private var selectedPosition: String?
    @State private var select = 0
    
    
    var body: some View {
        
        if selectionMade == false {
            Text("Let's find your favorite player...")
                .padding()
            Text("Select your position on the pitch...")
                .padding()
            Grid {
                //setting up the selection menu
                GridRow{
                    Button(action: {
                        selectionMade = true
                        selectedPosition = "Goalkeeper"
                    }) {
                        Text("Goalkeeper")
                    }
                    Button(action: {
                        selectionMade = true
                        selectedPosition = "Defender"
                        select = 1
                    }) {
                        Text("Defender")
                        
                    }
                }
                GridRow{
                    Button(action: {
                        selectionMade = true
                        selectedPosition = "Midfielder"
                        select = 2
                    }) {
                        Text("Midfielder")
                    }
                    Button(action: {
                        selectionMade = true
                        selectedPosition = "Forward"
                        select = 3
                    }) {
                        Text("Forward")
                    }
                }
            }
        } else {
            EmptyView()
            Text("You've selected \(selectedPosition ?? "No Position")")
            let randomInt = Int.random(in: 0..<playerArray[select].count)
            //Text("\(randomInt)")
            let randomPlayer = playerArray[select][randomInt]
            Text("Your player is \(randomPlayer)")
                .font(.largeTitle)
            
            NavigationView {
                List {
                    Section(header: Text("Other Players to look out for")) {
                        ForEach (playerArray[select], id: \.self) { player in
                            Text(player)
                        }
                    }
                }
            }
            
            
        }
    }
}


let playerArray =
[
    [
            "Aaron Ramsdale",
            "Alisson",
            "Ederson",
            "Emiliano Martinez",
            "Thibaut Courtois"
    ],
    [
            "Antonio Rüdiger",
            "João Cancelo",
            "Kyle Walker",
            "Luke Shaw",
            "Nathan Aké",
            "Rúben Dias",
            "Thiago Silva",
            "Trent Alexander-Arnold"
    ],
    [
            "Bernardo Silva",
            "Bruno Fernandes",
            "Casemiro",
            "Declan Rice",
            "Eduardo Camavinga",
            "Enzo Fernández",
            "İlkay Gündoğan",
            "Jude Bellingham",
            "Kevin De Bruyne",
            "Luka Modrić",
            "Mason Mount",
            "Moisés Caicedo",
            "Pedri",
            "Rodri",
            "Rodrigo De Paul"
    ],
    [
        
            "Bukayo Saka",
            "Cristiano Ronaldo",
            "Eden Hazard",
            "Harry Kane",
            "Jack Grealish",
            "Julián Álvarez",
            "Kaoru Mitoma",
            "Karim Benzema",
            "Kylian Mbappé",
            "Lionel Messi",
            "Marcus Rashford",
            "Neymar",
            "Olivier Giroud",
            "Rafael Leão",
            "Robert Lewandowski",
            "Sadio Mané",
            "Son Heung-min",
            "Vinícius Júnior"
    ]
]

#Preview {
    Players()
}
