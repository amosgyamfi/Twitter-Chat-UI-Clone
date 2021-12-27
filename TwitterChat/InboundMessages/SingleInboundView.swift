//
//  SingleInboundView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 11.11.2021.
//

import SwiftUI

struct SingleInboundView: View {
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
                                        path.addLine(to: CGPoint(x: 182, y: 0))
                                        path.addCurve(to: CGPoint(x: 198, y: 16), control1: CGPoint(x: 190.836563, y: -0), control2: CGPoint(x: 198, y: 7.163444))
                                        path.addLine(to: CGPoint(x: 198, y: 22))
                                        path.addCurve(to: CGPoint(x: 182, y: 38), control1: CGPoint(x: 198, y: 30.836555), control2: CGPoint(x: 190.836563, y: 38))
                                        path.addLine(to: CGPoint(x: 0, y: 38))
                                        path.addLine(to: CGPoint(x: 0, y: 38))
                                        path.addLine(to: CGPoint(x: 0, y: 16))
                                        path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                                        path.closeSubpath()
                                        path.move(to: CGPoint(x: 16, y: 0))
                                        }
                                        .frame(width: 198, height: 38)
                                        .foregroundColor(inboundColor)
                                    
                                    Text("It is almost 4 hrs. Wow")
                        }
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

struct SingleInboundView_Previews: PreviewProvider {
    static var previews: some View {
        SingleInboundView()
            .preferredColorScheme(.dark)
    }
}
