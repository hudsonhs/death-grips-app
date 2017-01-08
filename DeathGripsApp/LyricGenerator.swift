//
//  LyricGenerator.swift
//  DeathGripsApp
//
//  Created by Hudson Harriman-Smith on 1/7/17.
//  Copyright © 2017 Hudson Harriman-Smith. All rights reserved.
//

import GameKit

struct LyricGenerator {
    
    let lyrics = ["Sit in the dark and ponder how/ I'm fit to make the bottom fall through the floor/ And they all fall down/ YUH",
                  "You're fit to learn the proper meaning of a beatdown/ Madness, chaos in the brain/ Let my blood flow, make my blood flow through you, mane/ You got no business questioning a thang",
                  "Nothin’ out there, can’t stay inside/ Hit the bar, sleep deprived/ Who drove the car?/ I’m still alive"]
    func getLyric() -> String {
        let randomNum = GKRandomSource.sharedRandom().nextInt(upperBound: lyrics.count)
        return lyrics[randomNum]
    }
}
