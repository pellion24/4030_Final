//
//  SideMenuHeader.swift
//  4030_Final
//
//  Created by Ashvij Hosdurg on 4/9/25.
//

import SwiftUI

struct SideMenuHeader: View {
    var body: some View {
        HStack{
            Image(systemName: "soccerball")
                .imageScale(.large)
            VStack{
                Text("FootyJunkie")
            }
        }
    }
}

#Preview {
    SideMenuHeader()
}
