//
//  ContentView.swift
//  TrafficLight
//
//  Created by leogoba on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    private var redLight: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.red)
            .opacity(0.3)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
    
    private var yellowLight: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.yellow)
            .opacity(0.3)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
    
    private var greenLight: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(.green)
            .opacity(0.3)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
    
    
    var body: some View {
        VStack {
            redLight
            yellowLight
            greenLight
            
            Spacer()
            
            Button("START") {
                redLight.opacity(qwe())
            }
        }
        .padding()
    }
    
    func qwe() -> Double {
        1.0
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
