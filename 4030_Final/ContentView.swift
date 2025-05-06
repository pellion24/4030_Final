//
//  ContentView.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 4/9/25.
//

import SwiftUI



struct ContentView: View {
    @State private var showMenu = false
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Welcome to FootyJunkie")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Image(systemName: "soccerball")
                        .imageScale(.large)
                }
                
                
                SideMenu(isShowing: $showMenu)
            }
            
            .navigationTitle(Text("FootyJunkie"))
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action:{ showMenu.toggle()
                    }, label: { Image(systemName: "line.3.horizontal")
                    })
                }
            }
        }
        
    }
}
#Preview {
    ContentView()
}
