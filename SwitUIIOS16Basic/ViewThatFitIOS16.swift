//
//  ViewThatFitIOS16.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/16/24.
//

import SwiftUI

struct ViewThatFitIOS16: View {
    var body: some View {
        VStack (spacing:20){
            Text("1. ViewThatFit Horizontal")
                .font(.title)
                .foregroundStyle(.blue)
            
            ViewThatFits(in: .horizontal){
                RoundedRectangle(cornerRadius: 15)
                    .fill(.pink.opacity(0.7))
                    .overlay(Text("가로모드"))
                    .frame(width: 700, height: 75)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.orange.opacity(0.7))
                    .overlay(Text("세로모드"))
                    .frame(width: 350, height: 75)
            }
        }//: VStack
        .font(.title)
        .padding()
    }
}

struct ViewThatFileVertical: View {
    var body: some View {
        VStack (spacing:20){
            Text("1. ViewThatFit Horizontal")
                .font(.title)
                .foregroundStyle(.blue)
            
            ViewThatFits(in: .vertical){
                RoundedRectangle(cornerRadius: 15)
                    .fill(.purple.opacity(0.7))
                    .overlay(Text("세로모드"))
                    .frame(width: 200, height: 500)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.blue.opacity(0.7))
                    .overlay(Text("가로모드"))
                    .frame(width: 400, height: 100)
            }
        }//: VStack
        .font(.title)
        .padding()
    }
}

struct ViewThatFiltPractice: View {
    
    @State
    var count: Int = 1
    var body: some View {
        VStack{
            Text("연습")
                .font(.largeTitle.bold())
            
            ViewThatFits(in: .vertical){
                VStack  (spacing:10){
                    ForEach(1...count, id: \.self){ index in
                            RoundedRectangle(cornerRadius: 15)
                            .fill(.red)
                            .frame(height: 200)
                    }
                }
                
                ScrollView{
                    VStack  (spacing:10){
                        ForEach(1...count, id: \.self){ index in
                                RoundedRectangle(cornerRadius: 15)
                                .fill(.blue)
                                .frame(height: 200)
                        }
                    }
                }
            }.onTapGesture {
                count += 1
            }
            Spacer()
                
        }
        .padding()
    }
}

#Preview("Horizontal") {
    ViewThatFitIOS16()
}

#Preview("Vertical") {
    ViewThatFileVertical()
}

#Preview("Practice") {
    ViewThatFiltPractice()
}
