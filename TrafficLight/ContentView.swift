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
    
    @State private var currentLight = CurrentLights.red
    @State private var buttonTitle = "Start"
    @State private var circleViews: [CircleView] = [
        CircleView(color: .red, isOn: false),
        CircleView(color: .yellow, isOn: false),
        CircleView(color: .green, isOn: false)
    ]

    var body: some View {
        VStack {
            ForEach(circleViews) { circleView in
                circleView
            }
            Spacer()
            Button(action: {
                buttonTitle = "Next"
                switch currentLight {
                case .red:
                    circleViews[2].isOn = false
                    circleViews[0].isOn = true
                    currentLight = .yellow
                case .yellow:
                    circleViews[0].isOn = false
                    circleViews[1].isOn = true
                    currentLight = .green
                case .green:
                    circleViews[1].isOn = false
                    circleViews[2].isOn = true
                    currentLight = .red
                }
            }, label: {
                Text(buttonTitle)
                    .frame(width: 150)
                    .font(.largeTitle)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.capsule)
                    .overlay(Capsule().stroke(Color.mint, lineWidth: 5))
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
