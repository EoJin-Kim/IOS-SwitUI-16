//
//  CustomSheetBasic.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/15/24.
//

import SwiftUI

struct CustomSheetBasic: View {
    
    @State
    var showSheet: Bool = false
    
    var body: some View {
        Button(
            action: {
                showSheet.toggle()
            },
            label: {
                Text("Sheet 보이기")
                    .font(.title)
            }
        ).sheet(isPresented: $showSheet){
            Text("custom size sheet")
                .presentationDetents([.small, .medium, .large])
                .presentationDragIndicator(.hidden)
        }
    }
}

extension PresentationDetent{
    static let small = Self.height(100)
}

#Preview {
    CustomSheetBasic()
}
