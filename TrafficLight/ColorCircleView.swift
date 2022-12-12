//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by leogoba on 12.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 123, height: 123)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 4))
        
    }
}


struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 0.3)
    }
}
