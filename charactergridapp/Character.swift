//
//  Character.swift
//  charactergridapp
//
//  Created by BUTE, PAUL A. on 4/8/26.
//

import SwiftUI

enum Character: String, CaseIterable, Identifiable {
    
    var id: Character {self}
    case Marauder = "Marauder"
    case Templar = "Templar"
    case Witch = "Witch"
    case Shadow = "Shadow"
    case Duelist = "Duelist"
    case Scion = "Scion"
    case Ranger = "Ranger"
    
    var image: ImageResource {
        switch self {
        case .Marauder:
                .marauder
        case .Templar:
                .templar
        case .Shadow:
                .shadowchar
        case .Witch:
                .witch
        case .Duelist:
                .duelist
        case .Scion:
                .scion
        case .Ranger:
                .ranger
        }
    }
    
    var storyBlurb: String{
        switch self {
        case .Marauder:
                "A Karui Warrior taken from his people, he considers himself exiled by cowards who fear death. He seeks to return to his ancestors and reclaim their lost glory."
        case .Templar:
                "A high-ranking member of the Templar Order who discovered corruption within its ranks. Exiled for seeking the truth."
        case .Shadow:
                "A professional assassin who became too dangerous for his masters to countenance leaving around."
        case .Witch:
                "A thaumaturge who embraced forbidden magic and was exiled for the destruction she wrought."
        case .Duelist:
                "A flamboyant gladiator, renowned in the arena for his skill. Exiled for killing a high-ranking noble's favorite \"toy\" in a match."
        case .Scion:
                "A noblewoman, exiled for killing her husband on their wedding night."
        case .Ranger:
                "A criminal with a love for the hunt. Exiled for poaching."
        }
    }
}
