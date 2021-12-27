//
//  OutboundImageView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 08.11.2021.
//

import SwiftUI

struct OutboundImageView: View {
    
    let TwitterBlue = Color(#colorLiteral(red: 0.1137254902, green: 0.6078431373, blue: 0.937254902, alpha: 1))
    let ReactionYellow = Color(#colorLiteral(red: 1, green: 0.8588235294, blue: 0.3647058824, alpha: 1))
    
    var body: some View {
        
        VStack(alignment: .trailing) {
            ZStack {
                Path { path in
                   path.move(to: CGPoint(x: 16, y: 0))
                    path.addLine(to: CGPoint(x: 252, y: 0))
                    path.addCurve(to: CGPoint(x: 268, y: 16), control1: CGPoint(x: 260.836548, y: -0), control2: CGPoint(x: 268, y: 7.163444))
                    path.addLine(to: CGPoint(x: 268, y: 256))
                    path.addLine(to: CGPoint(x: 268, y: 256))
                    path.addLine(to: CGPoint(x: 16, y: 256))
                    path.addCurve(to: CGPoint(x: 0, y: 240), control1: CGPoint(x: 7.163444, y: 256), control2: CGPoint(x: 0, y: 248.836563))
                    path.addLine(to: CGPoint(x: 0, y: 16))
                    path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                    path.closeSubpath()
                    path.move(to: CGPoint(x: 16, y: 0))

                    }
                    .foregroundColor(TwitterBlue)
                VStack {
                    ZStack {
                        VStack(spacing: 0) {
                            Path { path in
                                path.move(to: CGPoint(x: 16, y: 0))
                                path.addLine(to: CGPoint(x: 249, y: 0))
                                path.addCurve(to: CGPoint(x: 265, y: 16), control1: CGPoint(x: 257.836548, y: -0), control2: CGPoint(x: 265, y: 7.163444))
                                path.addLine(to: CGPoint(x: 265, y: 156))
                                path.addLine(to: CGPoint(x: 265, y: 156))
                                path.addLine(to: CGPoint(x: 0, y: 156))
                                path.addLine(to: CGPoint(x: 0, y: 16))
                                path.addCurve(to: CGPoint(x: 16, y: 0), control1: CGPoint(x: -0, y: 7.163444), control2: CGPoint(x: 7.163444, y: 0))
                                path.closeSubpath()
                                path.move(to: CGPoint(x: 16, y: 0))
                                }
                                .frame(width: 265, height: 168)
                                .foregroundColor(Color(.systemGray))
                                .overlay(Image("image_hide"))
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 265, height: 56)
                                //.foregroundColor(.black)
                                
                                VStack(alignment: .leading) {
                                    Text("getstream.io")
                                        .font(.footnote)
                                        .foregroundColor(Color(.systemGray))
                                    Text("The #1 Chat Messaging + Activ…")
                                }
                            }
                        }
                        
                    }
                    Text("Hi, is this article on getstream.io?")
                }
            }
            .frame(width: 268, height: 256)
            
            HStack(spacing: 4) {
                Image(systemName: "flame.fill")
                    .foregroundColor(ReactionYellow)
                Text("1")
                    .font(.footnote)
                    .foregroundColor(Color(.systemGray))
            }
            
            HStack(spacing: 2) {
                Text("18:00")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                Image(systemName: "checkmark")
                    .font(.caption)
                    .foregroundColor(TwitterBlue)
            }
        }
    }
}

struct OutboundImageView_Previews: PreviewProvider {
    static var previews: some View {
        OutboundImageView()
            .preferredColorScheme(.dark)
    }
}
