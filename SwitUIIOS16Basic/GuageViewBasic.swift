//
//  GuageViewBasic.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/16/24.
//

import SwiftUI

struct GuageViewBasic: View {
    
    let gradient = Gradient(colors: [.green, .yellow, .orange])
    
    var body: some View {
        Gauge(
            value: 0.4, 
            label: {
                Text("Label")
            },
            currentValueLabel: {
                Text("40%")
            }
            
        )
        .gaugeStyle(.accessoryLinear)
        .tint(gradient)
        .padding()
    }
}

#Preview {
    GuageViewBasic()
}
