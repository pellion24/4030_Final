//
//  SideMenu.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 4/9/25.
//

import SwiftUI

struct SideMenu: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack{
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                    
                HStack{
                    VStack(alignment: .leading, spacing: 32){
                        SideMenuHeader()
                        Spacer()
                        //Links to my different pages
                            NavigationLink(destination: Players()) {
                                Text("Players")
                            }
                            NavigationLink(destination: Teams())
                            {
                                Text("Teams")
                            }
                            NavigationLink(destination:
                                Locations())
                            {
                                Text("Locations")
                            }
                        //}
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(Color.white)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    SideMenu(isShowing: .constant(true))
}
