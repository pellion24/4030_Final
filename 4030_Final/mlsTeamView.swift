//
//  mlsTeamView.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 5/1/25.
//

import SwiftUI

struct mlsTeamView: View {
    @State var teamName: String
    @State var stadiumName: String
    @State var capacity: Int
    @State var coachName: String
    @State var teamImage: String
    @State var lat: Double
    @State var long: Double
    
    var body: some View {
        //Laying out where the various inputs go on the screen
        VStack {
            MapView(lat: lat, long: long)
                .frame(height: 300)
            Image(teamImage)
                .offset(y: -105)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(teamName)
                    .font(.title)
                    .foregroundColor(Color.black)
                HStack {
                    Text(stadiumName)
                        .font(.subheadline)
                    Spacer()
                    Text(String(capacity))
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("Coach")
                    .font(.title2)
                Text(coachName)
                
                Divider()
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    mlsTeamView(teamName: "Atlanta United", stadiumName: "Mercedes-Benz Stadium", capacity: 30000, coachName: "Rob", teamImage: "Atlanta United FC", lat: 33.75555556, long:-84.4)
}
