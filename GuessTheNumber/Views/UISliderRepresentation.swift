//
//  UISliderRepresentation.swift
//  GuessTheNumber
//
//  Created by Варвара Уткина on 12.03.2024.
//

import SwiftUI

struct UISliderRepresentation: UIViewRepresentable {
    
    @Binding var sliderValue: Double
    
    let alpha: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateSlider),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(sliderValue)
        uiView.thumbTintColor = UIColor.red.withAlphaComponent(alpha)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(sliderValue: $sliderValue)
    }
}

extension UISliderRepresentation {
    final class Coordinator: NSObject {
        
        @Binding var sliderValue: Double
        
        init(sliderValue: Binding<Double>) {
            self._sliderValue = sliderValue
        }
        
        @objc func updateSlider(_ sender: UISlider) {
            sliderValue = Double(sender.value)
        }
    }
}

#Preview {
    UISliderRepresentation(sliderValue: .constant(100), alpha: 1)
}
