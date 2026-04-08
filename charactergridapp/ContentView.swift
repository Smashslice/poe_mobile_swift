//
//  ContentView.swift
//  charactergridapp
//
//  Created by BUTE, PAUL A. on 4/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.wraeclastMap)
                .resizable()
                .ignoresSafeArea(edges: .all)
                .background(.brown)
            
            LazyVGrid(columns: Array(repeating: GridItem(), count:2)){
                ForEach(Character.allCases){
                    characters in CharacterIcon(character: characters)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
