//
//  SingleOutboundView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 11.11.2021.
//

import SwiftUI

struct SingleOutboundView: View {
    let TwitterBlue = Color(#colorLiteral(red: 0.1137254902, green: 0.6078431373, blue: 0.937254902, alpha: 1))
    let ReactionPinkRed = Color(#colorLiteral(red: 0.8666666667, green: 0.1764705882, blue: 0.2666666667, alpha: 1))
    let ReactionYellow = Color(#colorLiteral(red: 1, green: 0.8588235294, blue: 0.3647058824, alpha: 1))

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
                .contextMenu {
                    
                    Button {
                        print("")
                    } label: {
                        Label("Copy message", systemImage: "doc.on.doc")
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
            
            HStack(spacing: 2) {
                Image(systemName: "heart.fill")
                    .foregroundColor(ReactionPinkRed)
                Text("1")
                    .font(.footnote)
                    .foregroundColor(Color(.systemGray))
            }
            
            HStack(spacing: 2) {
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(ReactionYellow)
                Text("1")
                    .font(.footnote)
                    .foregroundColor(Color(.systemGray))
            }
            
            HStack(spacing: 2)  {
                Text("14:37")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                Image(systemName: "checkmark")
                    .font(.caption)
                    .foregroundColor(TwitterBlue)
            }
        }
    }
}

struct SingleOutboundView_Previews: PreviewProvider {
    static var previews: some View {
        SingleOutboundView()
            .preferredColorScheme(.dark)
    }
}
