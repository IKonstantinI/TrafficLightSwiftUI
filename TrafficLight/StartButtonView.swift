//
//  StartButtonView.swift
//  TrafficLight
//
//  Created by horze on 03.03.2024.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(.mint, lineWidth: 5))
    }
}

#Preview {
    StartButtonView(title: "Start", action: {})
}
