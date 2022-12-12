//
//  ContentView.swift
//  TrafficLight
//
//  Created by leogoba on 10.12.2022.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonLabel = "START"
    @State private var currentLight: CurrentLight = .off
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorCircleView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1: 0.3
                )
                ColorCircleView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Spacer()
                
                StartButtonView(title: buttonLabel) {
                    if buttonLabel == "START" {
                        buttonLabel = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
    
    private func nextColor() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .off
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
