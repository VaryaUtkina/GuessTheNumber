//
//  SliderView.swift
//  GuessTheNumber
//
//  Created by Варвара Уткина on 14.03.2024.
//

import SwiftUI

struct SliderView: View {
    @Bindable var gameViewModel: GameViewViewModel
    let color: UIColor
    
    var body: some View {
        VStack {
            let targetValue = gameViewModel.gameOptions.targetValue
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")
            HStack {
                Text("0")
                UISliderRepresentation(
                    sliderValue: $gameViewModel.gameOptions.currentValue,
                    alpha: gameViewModel.alpha
                )
                Text("100")
            }
            .padding()
        }
    }
}

struct GameSlider_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(gameViewModel: GameViewViewModel(), color: .red)
    }
}
