//
//  CharacterIcon.swift
//  charactergridapp
//
//  Created by BUTE, PAUL A. on 4/8/26.
//

import SwiftUI

struct CharacterIcon: View {
    let character: Character
    var body: some View {
        ZStack(alignment: .bottom){
            Image(character.image)
                .resizable()
                .scaledToFit()
                .padding(.bottom, 25)
            Text(character.rawValue)
                .padding(2)
                .font(.caption)
        }
        .padding(3)
        .frame(width:100, height: 100)
        .background(.brown)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        Text(character.storyBlurb)
            .padding(2)
            .padding(.top, 0)
            .frame(width:100, height: 100)
            .font(.system(size:10))
            .foregroundColor(.white)
    }
}

#Preview {
    CharacterIcon(character: .Ranger)
}
