//
//  ShareLinkBasic.swift
//  SwitUIIOS16Basic
//
//  Created by 김어진 on 3/15/24.
//

import SwiftUI

struct ShareLinkBasic: View {
    let natureImage = ImageFile(image: Image("nature"))
    
    var body: some View {
        VStack{
            ShareLink(item :URL(string: "https://naver.com")!){
                Text("링크 Share")
                    .font(.largeTitle)
            }
            
            ShareLink(item: natureImage,  preview: SharePreview("Nature 사진", image: natureImage.image)){
                Text("이미지 Share")
                    .font(.largeTitle)
            }
        }//: VStack
    }
}

#Preview {
    ShareLinkBasic()
}


struct ImageFile: Transferable{
    var image: Image
    static var transferRepresentation: some TransferRepresentation{
        ProxyRepresentation(exporting: \.image)
    }
}
