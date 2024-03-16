//
//  GridRowBasic.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/16/24.
//

import SwiftUI

struct GridRowBasic: View {
    var body: some View {
        VStack (spacing:20){
            Grid{
                GridRow{
                    Color.red
                    Color.red
                    Color.red
                }//: GridRow
                
                GridRow{
                    Color.red
                        .frame(width: 100, height: 100)
                    
                    Color.red
                        .frame(width: 30, height: 30)
                        .gridCellColumns(1)
                        .gridCellAnchor(.top)
                }
            }//: Grid
            .frame(height: 200)
            
            Divider()
            
            Grid{
                GridRow{
                    Color.blue
                        .frame(width: 30, height: 30)
                    Color.blue
                        .frame(width: 30, height: 30)
                    Color.blue
                        .frame(width: 30, height: 30)
                }//: GridRow
                
                GridRow{
                    Color.blue
                        .frame(width: 30, height: 30)
                }//: GridRow
            }//: Grid
        }

    }
}

#Preview {
    GridRowBasic()
}
