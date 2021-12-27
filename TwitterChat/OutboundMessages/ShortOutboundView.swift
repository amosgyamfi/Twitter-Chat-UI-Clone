//
//  ShortOutboundView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 11.11.2021.
//

import SwiftUI

struct ShortOutboundView: View {
    let TwitterBlue = Color(#colorLiteral(red: 0.1137254902, green: 0.6078431373, blue: 0.937254902, alpha: 1))
    @State private var unSeen = true

    var body: some View {
        VStack(alignment: .trailing, spacing: 2) {
            VStack(alignment: .trailing, spacing: 2) {
                ZStack {
                    Path { path in
                        path.move(to: CGPoint(x: 16, y: 0))
                        path.addLine(to: CGPoint(x: 30, y: 0))
                        path.addCurve(to: CGPoint(x: 46, y: 16), control1: CGPoint(x: 38.836555, y: -0), control2: CGPoint(x: 46, y: 7.163444))
                        path.addLine(to: CGPoint(x: 46, y: 38))
                        path.addLine(to: CGPoint(x: 46, y: 38))
                        path.addLine(to: CGPoint(x: 16, y: 38))
                        path.addCurve(to: CGPoint(x: 0, y: 22), control1: CGPoint(x: 7.163444, y: 38), control2: CGPoint(x: 0, y: 30.836555))
                        path.addLine(to: CGPoint(x: 0, y: 16))
                        path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                        path.closeSubpath()
                        path.move(to: CGPoint(x: 16, y: 0))
                        }
                    .foregroundColor(TwitterBlue)
                    Text("Ok")
                }
                .frame(width: 46, height: 38)
                
            }
            
            
            if unSeen {
                HStack(spacing: 2) {
                    Text("14:37")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .animation(.easeOut)
                        //.transition(.slide)
                    Image(systemName: "checkmark")
                        .font(.caption)
                        .foregroundColor(TwitterBlue)
                }
                
            } else {
                HStack(spacing: 2) {
                    Text("Seen")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                        .animation(.easeOut)
                        //.transition(.slide)
                    Image(systemName: "checkmark")
                        .font(.caption)
                        .foregroundColor(TwitterBlue)
                }
            }
            
        }
        .onTapGesture {
            unSeen.toggle()
        }
    }
}

struct ShortOutboundView_Previews: PreviewProvider {
    static var previews: some View {
        ShortOutboundView()
            .preferredColorScheme(.dark)
    }
}
