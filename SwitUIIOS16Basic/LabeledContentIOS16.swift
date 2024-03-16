//
//  LabeledContentIOS16.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/16/24.
//

import SwiftUI

struct LabeledContentIOS16: View {
    var body: some View {
        VStack (spacing:10){
            Text("LabeledCountent")
                .font(.largeTitle)
            
            LabeledContent("제목", value: "값")
            LabeledContent("제목"){
                Label("사진기", systemImage: "camera")
                
            }
            
            LabeledContent("퍼센트", value: 50, format: .percent)
            LabeledContent("금액", value: 4000, format: .currency(code: "krwio"))
        }
        .padding()

    }//: VStack
}

#Preview {
    LabeledContentIOS16()
}
