//
//  GameViewViewModel.swift
//  GuessTheNumber
//
//  Created by Варвара Уткина on 14.03.2024.
//

import Foundation
import Observation

@Observable final class GameViewViewModel {
    var gameOptions = GameOptions()
    var alertIsPresented = false
    
    var scores: Int {
        100 - abs(gameOptions.targetValue - lround(gameOptions.currentValue))
    }
    
    var alpha: Double {
        Double(scores) / 100
    }
    
    func showAlert() {
        alertIsPresented.toggle()
    }
    
    func reset() {
        gameOptions.currentValue = Double.random(in: 0...100)
        gameOptions.targetValue = Int.random(in: 0...100)
    }
}
