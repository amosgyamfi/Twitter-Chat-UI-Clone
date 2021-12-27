//
//  ConsecutiveInboundView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 11.11.2021.
//

import SwiftUI

struct ConsecutiveInboundView: View {
    
    let inboundColor = Color(red: 0.184314, green: 0.2, blue: 0.211765)

    var body: some View {
        HStack {
            HStack(alignment:.bottom, spacing: 8) {
                Image("amos_inbound")
                    .padding(.bottom)
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                       
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
                                .overlay(Text("Great, we are not so far. I live in Sweden"))
                            
                            
                            Path { path in
                                path.move(to: CGPoint(x: 0, y: 0))
                                path.addLine(to: CGPoint(x: 111, y: 0))
                                path.addCurve(to: CGPoint(x: 127, y: 16), control1: CGPoint(x: 119.836555, y: -0), control2: CGPoint(x: 127, y: 7.163444))
                                path.addLine(to: CGPoint(x: 127, y: 22))
                                path.addCurve(to: CGPoint(x: 111, y: 38), control1: CGPoint(x: 127, y: 30.836555), control2: CGPoint(x: 119.836555, y: 38))
                                path.addLine(to: CGPoint(x: 0, y: 38))
                                path.addLine(to: CGPoint(x: 0, y: 38))
                                path.addLine(to: CGPoint(x: 0, y: 0))
                                path.closeSubpath()
                                path.move(to: CGPoint(x: 0, y: 0))
                                }
                                .foregroundColor(inboundColor)
                                .frame(width: 127, height: 38)
                                .overlay(
                                    Text("Good morning"))
                                .contextMenu {
                                    Button {
                                        print("")
                                    } label: {
                                        Label("Add reaction", systemImage: "face.smiling")
                                    }
                                    
                                    Button {
                                        print("")
                                    } label: {
                                        Label("Copy message", systemImage: "doc.on.doc")
                                    }
                                    
                                    Button {
                                        print("")
                                    } label: {
                                        Label("Report message", systemImage: "flag")
                                    }
                                    
                                    if #available(iOS 15.0, *) {
                                        Button(role: .destructive) {
                                            print("")
                                        } label: {
                                            Label("Delete message for you", systemImage: "trash")
                                        }
                                    } else {
                                        // Fallback on earlier versions
                                    }
                                }
                                
                    }
                    
                    Text("13.10")
                        .font(.caption)
                        .foregroundColor(.secondary)
                } // Consecutive messages
            }
        } // Top bar ends
    }
}

struct ConsecutiveInboundView_Previews: PreviewProvider {
    static var previews: some View {
        ConsecutiveInboundView()
            .preferredColorScheme(.dark)
    }
}
