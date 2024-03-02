//
//  CircleView.swift
//  TrafficLight
//
//  Created by horze on 29.02.2024.
//

import SwiftUI

struct CircleView: View, Identifiable {
    var id = UUID()
    let color: UIColor
    var isOn: Bool
    
    var body: some View {
        Circle()
            .foregroundStyle(Color(color))
            .frame(width: 150, height: 150)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.mint, lineWidth: 5))
            .opacity(isOn ? 1.0 : 0.3)
    }
}

#Preview {
    CircleView(color: .red, isOn: true)
}

