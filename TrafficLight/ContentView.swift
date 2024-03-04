//
//  ContentView.swift
//  TrafficLight
//
//  Created by horze on 29.02.2024.
//

import SwiftUI

enum CurrentLights {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLights.red
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
                CircleView(color: .red, opacity: redLightState)
                CircleView(color: .yellow, opacity: yellowLightState)
                CircleView(color: .green, opacity: greenLightState)
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
    
    private func nextColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = lightIsOff
            redLightState = lightIsOn
        case .yellow:
            currentLight = .green
            redLightState = lightIsOff
            yellowLightState = lightIsOn
        case .green:
            currentLight = .red
            greenLightState = lightIsOn
            yellowLightState = lightIsOff
        }
    }
}

#Preview {
    ContentView()
}
