//
//  ContentView.swift
//  TrafficLight
//
//  Created by leogoba on 10.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var redOpacity = 0.3
    @State var yellowOpacity = 0.3
    @State var greenOpacity = 0.3
    @State var buttonLabel = "START"
    
    private var redLight: some View {
        Circle()
            .frame(width: 123, height: 123)
            .foregroundColor(.red)
            .opacity(redOpacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }

    private var yellowLight: some View {
        Circle()
            .frame(width: 123, height: 123)
            .foregroundColor(.yellow)
            .opacity(yellowOpacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }

    private var greenLight: some View {
        Circle()
            .frame(width: 123, height: 123)
            .foregroundColor(.green)
            .opacity(greenOpacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                redLight
                yellowLight
                    .padding()
                greenLight
                
                Spacer()

                Button(action: {
                    if buttonLabel == "START" {
                        redOpacity = 1.0
                        buttonLabel = "NEXT"
                    } else if redOpacity == 1.0 {
                        redOpacity = 0.3
                        yellowOpacity = 1.0
                    } else if yellowOpacity == 1.0 {
                        yellowOpacity = 0.3
                        greenOpacity = 1.0
                    } else {
                        greenOpacity = 0.3
                        redOpacity = 1.0
                    }
                }) {
                    ZStack {
                        Capsule()
                            .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                            .frame(width: 250, height: 80)
                        Text(buttonLabel)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
