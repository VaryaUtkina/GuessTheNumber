//
//  GameOption.swift
//  GuessTheNumber
//
//  Created by Варвара Уткина on 14.03.2024.
//

import Foundation

struct GameOptions {
    var targetValue = Int.random(in: 0...100)
    var currentValue = Double.random(in: 0...100)
}
