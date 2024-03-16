//
//  TabGestureWithLocationBasic.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/16/24.
//

import SwiftUI

struct TabGestureWithLocationBasic: View {
    
    @State
    var point: CGPoint = .init(x: 0.0, y: 0.0)
    
    @State
    var x: Double = 0.0
    @State
    var y: Double = 0.0
    
    var body: some View {
        VStack (spacing:20){

            Text("X 좌표 : \(x)")
            Text("y 좌표 : \(y)")
            
            //Rectangle 범우 내에서 포인트
            Rectangle()
                .fill(.green)
                .frame(height: 300)
                .padding()
                .onTapGesture { location in
                    point = location
                    convertToDouble(point: point)
                }
            
            // 전체화면 내에서 포이튼
            Rectangle()
                .fill(.blue)
                .frame(height: 300)
                .padding()
                .onTapGesture(coordinateSpace: .global) { location in
                    point = location
                    convertToDouble(point: point)
                }
        }//: VStack
    }
    
    func convertToDouble(point: CGPoint){
        x = Double(point.x)
        y = Double(point.y)
    }
}

#Preview {
    TabGestureWithLocationBasic()
}
