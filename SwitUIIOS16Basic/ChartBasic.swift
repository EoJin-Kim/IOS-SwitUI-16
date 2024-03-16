//
//  ChartBasic.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/15/24.
//

import SwiftUI
import Charts
struct WeightModel: Identifiable{
    var id = UUID().uuidString
    var day: String
    var weight: Double
}

var weightData: [WeightModel] = [
    WeightModel(day: "Sun", weight: 77),
    WeightModel(day: "Mon", weight: 43),
    WeightModel(day: "asd", weight: 77),
    WeightModel(day: "zxc", weight: 43),
    WeightModel(day: "qwe", weight: 77),
    WeightModel(day: "gh", weight: 43),
    WeightModel(day: "dg", weight: 77),
]

struct ChartBasic: View {
    var body: some View {
        
        // custom 색 array
        let barColor: [Color] = [.red, .black, .accentColor, .green,.yellow, .cyan, .brown]
        
        ScrollView{
            VStack (spacing:20){
                Text("1. 바형 차트")
                Chart(weightData){ item in
                    BarMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    ).foregroundStyle(by: .value("Day", item.day))
                        .annotation(position: .top){
                            Image(systemName: "square.and.arrow.down")
                                .foregroundColor(.red)
                            
                        }
                }// Chart
                .chartForegroundStyleScale(
                    domain: weightData.compactMap({ weight -> String in
                        weight.day
                    }),
                    range: barColor
                )
                // customColor
                
                
                .frame(height: 200)
                
                Divider()
                
                Text("2 . 라인 차트")
                Chart(weightData){ item in
                        LineMark(x: .value("Day", item.day), y: .value("Weight", item.weight)
                        )
//                        .lineStyle(StrokeStyle(lineWidth: 10))
//                        .symbol(by: .value("Day", item.day))
                        .interpolationMethod(.catmullRom)
                }.frame(height: 200)
                
                Divider()
                
                Text("3 . 사각형 차트")
                Chart(weightData){ item in
                        RectangleMark(
                            x: .value("Day", item.day),
                            y: .value("Weight", item.weight)
                        )
                }.frame(height: 200)
                
                Divider()
                
                Text("4 . 라인 차트")
                Chart(weightData){ item in
                        AreaMark(x: .value("Day", item.day), y: .value("Weight", item.weight)
                        )
//                        .lineStyle(StrokeStyle(lineWidth: 10))
//                        .symbol(by: .value("Day", item.day))
                        .interpolationMethod(.catmullRom)
                        RuleMark(
                            y: .value("Mid", 75)
                        ).foregroundStyle(.red)
                }.frame(height: 200)
                
                Divider()
            }//: VStack
        }//: ScrollView
    }
}

#Preview {
    ChartBasic()
}
