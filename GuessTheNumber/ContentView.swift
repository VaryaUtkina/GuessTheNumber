//
//  ContentView.swift
//  GuessTheNumber
//
//  Created by Варвара Уткина on 12.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 50.0
    @State private var targetValue = Int.random(in: 0...100)
    
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
                Slider(value: $sliderValue, in: 0...100)
                Text("100")
                    .frame(width: 30)
            }
            VStack(spacing: 20) {
                Button("Проверь меня!", action: {} )
                Button("Начать заново", action: {} )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
