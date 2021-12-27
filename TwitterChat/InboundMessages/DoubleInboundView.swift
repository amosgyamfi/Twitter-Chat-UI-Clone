//
//  DoubleInboundView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 12.11.2021.
//

import SwiftUI

struct DoubleInboundView: View {
    
    let inboundColor = Color(red: 0.184314, green: 0.2, blue: 0.211765)

    var body: some View {
        HStack {
            HStack(alignment:.bottom, spacing: 8) {
                Image("amos_inbound")
                    .padding(.bottom)
                VStack(alignment: .leading, spacing: 2) {
                    VStack(alignment: .leading, spacing: 2) {
                        
                            Path { path in
                                path.move(to: CGPoint(x: 16, y: 0))
                                path.addLine(to: CGPoint(x: 219, y: 0))
                                path.addCurve(to: CGPoint(x: 235, y: 16), control1: CGPoint(x: 227.836563, y: -0), control2: CGPoint(x: 235, y: 7.163444))
                                path.addLine(to: CGPoint(x: 235, y: 43))
                                path.addCurve(to: CGPoint(x: 219, y: 59), control1: CGPoint(x: 235, y: 51.836555), control2: CGPoint(x: 227.836563, y: 59))
                                path.addLine(to: CGPoint(x: 0, y: 59))
                                path.addLine(to: CGPoint(x: 0, y: 59))
                                path.addLine(to: CGPoint(x: 0, y: 16))
                                path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                                path.closeSubpath()
                                path.move(to: CGPoint(x: 16, y: 0))
                                }
                                .frame(width: 235, height: 59)
                                .foregroundColor(inboundColor)
                                .overlay(Text("Ok, I live in Boulder now. Let me check the map"))
                    }
                    
                    Text("14.01")
                        .font(.caption)
                        .foregroundColor(.secondary)
                } // Consecutive messages
            }
        } // Top bar ends
    }
}

struct DoubleInboundView_Previews: PreviewProvider {
    static var previews: some View {
        DoubleInboundView()
            .preferredColorScheme(.dark)
    }
}
