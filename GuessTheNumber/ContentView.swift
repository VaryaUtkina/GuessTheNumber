//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Варвара Уткина on 12.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var currentValue = 50.0
    @State private var targetValue = Int.random(in: 0...100)
    @State private var isPresented = false
    
    var body: some View {
        VStack(spacing: 35) {
            HStack(spacing: 3) {
                Text("Подвиньте слайдер как можно ближе к:")
                Text(targetValue.formatted())
                    .frame(width: 30, alignment: .leading)
            }
            HStack {
                Text("0")
                    .frame(width: 30)
                UISliderRepresentation(sliderValue: $currentValue)
                Text("100")
                    .frame(width: 30)
            }
            VStack(spacing: 20) {
                Button("Проверь меня!", action: showAlert )
                    .alert("Your Score", isPresented: $isPresented) {
                        Button("OK") {}
                    } message: {
                        Text(computeScore().formatted())
                    }
                Button("Начать заново") {
                    targetValue = Int.random(in: 0...100)
                }
            }
        }
        .padding()
    }
    
    private func showAlert() {
        isPresented.toggle()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue -  lround(currentValue))
        return 100 - difference
    }
}

#Preview {
    ContentView()
}
