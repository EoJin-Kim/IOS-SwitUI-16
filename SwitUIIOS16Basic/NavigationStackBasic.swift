//
//  NavigationStackBasic.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/16/24.
//

import SwiftUI

struct NavigationStackBasic: View {
    
    @State
    var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stack) {
            NavigationLink("2번째 페이지 이동", value: 40)
                .navigationDestination(for: Int.self) { value in
                    NavigationLink("3번째 페이지 이동", value: 100)
                    
                    Text("나의 나이는 \(value) 입니다")
                    Button(
                        action: {
                            stack = .init()
                        },
                        label: {
                            Text("초기 화면으로 이동")
                        }
                    )
                }
        }
    }
}

#Preview {
    NavigationStackBasic()
}
