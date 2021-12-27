//
//  ConsecutiveOutboundView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 11.11.2021.
//

import SwiftUI

struct ConsecutiveOutboundView: View {
    let TwitterBlue = Color(#colorLiteral(red: 0.1137254902, green: 0.6078431373, blue: 0.937254902, alpha: 1))

    var body: some View {
        VStack(alignment: .trailing, spacing: 2) {
            VStack(alignment: .trailing, spacing: 2) {
                ZStack {
                    Path { path in
                        path.move(to: CGPoint(x: 16, y: 0))
                        path.addLine(to: CGPoint(x: 147, y: 0))
                        path.addCurve(to: CGPoint(x: 163, y: 16), control1: CGPoint(x: 155.836563, y: -0), control2: CGPoint(x: 163, y: 7.163444))
                        path.addLine(to: CGPoint(x: 163, y: 38))
                        path.addLine(to: CGPoint(x: 163, y: 38))
                        path.addLine(to: CGPoint(x: 16, y: 38))
                        path.addCurve(to: CGPoint(x: 0, y: 22), control1: CGPoint(x: 7.163444, y: 38), control2: CGPoint(x: 0, y: 30.836555))
                        path.addLine(to: CGPoint(x: 0, y: 16))
                        path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                        path.closeSubpath()
                        path.move(to: CGPoint(x: 16, y: 0))

                        }
                    .foregroundColor(TwitterBlue)
                    Text("Ok very close to me")
                }
                .frame(width: 163, height: 38)
                
                
                ZStack {
                    Path { path in
                        path.move(to: CGPoint(x: 16, y: 0))
                        path.addLine(to: CGPoint(x: 199, y: 0))
                        path.addLine(to: CGPoint(x: 199, y: 0))
                        path.addLine(to: CGPoint(x: 199, y: 59))
                        path.addLine(to: CGPoint(x: 16, y: 59))
                        path.addCurve(to: CGPoint(x: 0, y: 43), control1: CGPoint(x: 7.163444, y: 59), control2: CGPoint(x: 0, y: 51.836555))
                        path.addLine(to: CGPoint(x: 0, y: 16))
                        path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                        path.closeSubpath()
                        path.move(to: CGPoint(x: 16, y: 0))
                        }
                    .foregroundColor(TwitterBlue)
                    Text("I may be in Karlskrona 13-15 December")
                }
                .frame(width: 199, height: 59)
            }
            HStack(spacing: 2)  {
                Text("13:17")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Image(systemName: "checkmark")
                    .font(.caption2)
                    .foregroundColor(TwitterBlue)
            }
        }
    }
}

struct ConsecutiveOutboundView_Previews: PreviewProvider {
    static var previews: some View {
        ConsecutiveOutboundView()
            .preferredColorScheme(.dark)
    }
}
