//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Варвара Уткина on 12.03.2024.
//

import SwiftUI

struct GameView: View {
    
    @State private var gameViewModel = GameViewViewModel()
        
    var body: some View {
        VStack {
            SliderView(gameViewModel: gameViewModel, color: .red)
            
            Button("Проверь меня!", action: gameViewModel.showAlert)
                .padding()
                .alert(
                    "Your Score",
                    isPresented: $gameViewModel.alertIsPresented,
                    actions: {}
                ) {
                    Text(gameViewModel.scores.formatted())
                }
            
            Button("Начать заново", action: gameViewModel.reset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
