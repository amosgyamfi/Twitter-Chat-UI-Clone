//
//  LongMessageInboundView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 11.11.2021.
//

import SwiftUI

struct LongMessageInboundView: View {
    let noImage = Image(uiImage: #imageLiteral(resourceName: "image_hide"))
    
    let inboundColor = Color(red: 0.184314, green: 0.2, blue: 0.211765)

    var body: some View {
            HStack(alignment: .bottom, spacing: 8) {
                Image("amos_inbound")
                    .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 2) {
                    ReactionsView()
                    
                    HStack(alignment: .bottom) {
                        ZStack {
                                    Path { path in
                                        path.move(to: CGPoint(x: 16, y: 0))
                                        path.addLine(to: CGPoint(x: 256, y: 0))
                                        path.addCurve(to: CGPoint(x: 272, y: 16), control1: CGPoint(x: 264.836548, y: -0), control2: CGPoint(x: 272, y: 7.163444))
                                        path.addLine(to: CGPoint(x: 272, y: 318))
                                        path.addCurve(to: CGPoint(x: 256, y: 334), control1: CGPoint(x: 272, y: 326.836548), control2: CGPoint(x: 264.836548, y: 334))
                                        path.addLine(to: CGPoint(x: 0, y: 334))
                                        path.addLine(to: CGPoint(x: 0, y: 334))
                                        path.addLine(to: CGPoint(x: 0, y: 16))
                                        path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                                        path.closeSubpath()
                                        path.move(to: CGPoint(x: 16, y: 0))
                                        }
                                        .foregroundColor(inboundColor)
                                    
                                    Text("Hi, @Fra, here. We are building an app for designers and developers. A tool that will help design and dev teams build iOS layouts easily. It will support team collaboration, version control and management. Are you interested to try it out? If so, I can send you a link to download the test flight to test it out. Would this be something valuable to your team? Kindly le me know about this.Additionally, you can use this tool to compose layouts for flutter and android applications. Possibilities for this tool are endless.")
                                .frame(width: 248, height: 311)
                        }
                        .frame(width: 272, height: 334)
                        
                        ZStack(alignment: .bottomTrailing) {
                            Image(systemName: "heart")
                            Image(systemName: "plus")

                                .font(.system(size: 8))
                        }
                        .foregroundColor(Color(.systemGray))
                    }
                    
                    Text("15.17")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
    }
}

struct LongMessageInboundView_Previews: PreviewProvider {
    static var previews: some View {
        LongMessageInboundView()
            .preferredColorScheme(.dark)
    }
}
