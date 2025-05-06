//
//  Locations.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 5/1/25.
//

import SwiftUI
import MapKit

struct Locations: View {
    
    @State var teamSelected = false
    
    var body: some View {
        HStack {
            Image("MLS")
                .resizable()
                .frame(width: 50, height: 50)
            Text("MAJOR LEAGUE SOCCER")
                .fontWeight(.bold)
                .font(.title)
                .multilineTextAlignment(.center)
            Image("MLS")
                .resizable()
                .frame(width: 50, height: 50)
        }
        if teamSelected == false {
            NavigationView() {
                List {
                    //List of all the teams
                    ForEach(0..<mlsTeamNames.count) { index in
                        NavigationLink(destination: mlsTeamView(teamName: mlsTeamNames[index], stadiumName: mlsStadiums[index], capacity: mlsCapacity[index], coachName: mlsCoaches[index], teamImage: mlsTeamNames[index], lat: mlsLat[index], long: mlsLong[index])) {
                            HStack {
                                Text(mlsTeamNames[index])
                                Spacer()
                                Image(mlsTeamNames[index])
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                        }
                    }
                }
            }
        } else {
            
            //shows the map view of the selected team
            mlsTeamView(teamName: mlsTeamNames[0], stadiumName: mlsStadiums[0], capacity: mlsCapacity[0], coachName: mlsCoaches[0], teamImage: mlsTeamNames[0], lat: mlsLat[0], long: mlsLong[0])
        }
    }
}

//My arrays, found from Github CSV from user "gavinr"

let mlsTeamNames = [
    "Atlanta United FC",
    "Austin FC",
    "CF Montreal",
    "Charlotte FC",
    "Chicago Fire",
    "Colorado Rapids",
    "Columbus Crew",
    "D.C. United",
    "FC Cincinnati",
    "FC Dallas",
    "Houston Dynamo FC",
    "Inter Miami CF",
    "Los Angeles Galaxy",
    "Los Angeles FC",
    "Minnesota United FC",
    "Nashville SC",
    "New England Revolution",
    "New York City FC",
    "New York Red Bulls",
    "Orlando City",
    "Philadelphia Union",
    "Portland Timbers",
    "Real Salt Lake",
    "San Diego FC",
    "San Jose Earthquakes",
    "Seattle Sounders FC",
    "Sporting Kansas City",
    "St.Louis City SC",
    "Toronto FC",
    "Vancouver Whitecaps FC"
]
let mlsCoaches = [
    "Ronny Deila",
    "Nico Estévez",
    "Laurent Courtois",
    "Dean Smith",
    "Gregg Berhalter",
    "Chris Armas",
    "Wilfried Nancy",
    "Troy Lesesne",
    "Pat Noonan",
    "Eric Quill",
    "Ben Olsen",
    "Javier Mascherano",
    "Greg Vanney",
    "Steve Cherundolo",
    "Eric Ramsay",
    "B.J. Callaghan",
    "Caleb Porter",
    "Pascal Jansen",
    "Sandro Schwarz",
    "Óscar Pareja",
    "Bradley Carnell",
    "Phil Neville",
    "Pablo Mastroeni",
    "Mikey Varas",
    "Bruce Arena",
    "Brian Schmetzer",
    "Peter Vermes",
    "Olof Mellberg",
    "Robin Fraser",
    "Jesper Sørensen",
]
let mlsLong = [
    -84.4,
    -97.7195,
    -73.5525,
    -80.85277778,
    -87.6167,
    -104.89194444,
    -83.01708889,
    -77.012869,
    -84.52222222,
    -96.83527778,
    -95.3524,
    -80.16066667,
    -118.261,
    -118.28408333,
    -93.16472222,
    -86.766,
    -71.264,
    -73.92638889,
    -74.15027778,
    -81.3893,
    -75.37888889,
    -122.69166667,
    -111.8934,
    -117.12283333,
    -121.925,
    -122.3316,
    -94.82318,
    -90.21027778,
    -79.41858333,
    -123.11194444,
]
let mlsLat = [
    33.75555556,
    30.3877,
    45.56305556,
    35.22583333,
    41.8623,
    39.80555556,
    39.96846111,
    38.868411,
    39.11138889,
    33.15444444,
    29.7522,
    26.19327778,
    33.864,
    34.01277778,
    44.95311111,
    36.13008333,
    42.091,
    40.82916667,
    40.73666667,
    28.5411,
    39.83222222,
    45.52138889,
    40.5829,
    32.78444444,
    37.35138889,
    47.5952,
    39.12174,
    38.63138889,
    43.63322222,
    49.27666667,
]

let mlsStadiums = [
    "Mercedes-Benz Stadium",
    "Q2 Stadium",
    "Saputo Stadium",
    "Bank of America Stadium",
    "Soldier Field",
    "Dick's Sporting Goods Park",
    "Lower.com Field",
    "Audi Field",
    "TQL Stadium",
    "Toyota Stadium",
    "Shell Energy Stadium",
    "Chase Stadium",
    "Dignity Health Sports Park",
    "BMO Stadium",
    "Allianz Field",
    "Geodis Park",
    "Gillette Stadium",
    "Yankee Stadium",
    "Sports Illustrated Stadium",
    "Inter&Co Stadium",
    "Subaru Park",
    "Providence Park",
    "America First Field",
    "Snapdragon Stadium",
    "PayPal Park",
    "Lumen Field",
    "Children's Mercy Park",
    "Energizer Park",
    "BMO Field",
    "BC Place"
]

let mlsCapacity = [
    42500,
    20738,
    19619,
    38000,
    24995,
    18061,
    20371,
    20000,
    26000,
    19096,
    22039,
    21550,
    27000,
    22000,
    19400,
    30000,
    20000,
    30321,
    25000,
    25500,
    18500,
    25218,
    20213,
    35000,
    18000,
    37722,
    18467,
    22423,
    28351,
    22120,
]

#Preview {
    Locations()
}
