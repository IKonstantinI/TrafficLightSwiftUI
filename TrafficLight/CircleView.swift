//
//  CircleView.swift
//  TrafficLight
//
//  Created by horze on 29.02.2024.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .frame(width: 150)
            .overlay(Circle().stroke(Color.mint, lineWidth: 5))
            .opacity(opacity)
    }
}

#Preview {
    CircleView(color: .red, opacity: 1)
}

