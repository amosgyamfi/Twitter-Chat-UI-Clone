//
//  ReactionsView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 08.11.2021.
//

import SwiftUI

struct ReactionsView: View {
    let reactionsBG = Color(#colorLiteral(red: 0.0862745098, green: 0.09803921569, blue: 0.1058823529, alpha: 1))
    let teasOfJoy = Image(uiImage: #imageLiteral(resourceName: "tears_of_joy"))
    let toungOut = Image(uiImage: #imageLiteral(resourceName: "tung"))
    let drop = Image(uiImage: #imageLiteral(resourceName: "drop"))
    let love = Image(uiImage: #imageLiteral(resourceName: "twitter_heart"))
    let fire = Image(uiImage: #imageLiteral(resourceName: "fire"))
    let fingersUp = Image(uiImage: #imageLiteral(resourceName: "fingersUp"))
    let fingerUp = Image(uiImage: #imageLiteral(resourceName: "fingerUp"))

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 312, height: 79)
            .foregroundColor(reactionsBG)
            
            VStack {
                Text("Add reaction by double-tapping any message")
                    .font(.caption)
                .foregroundColor(Color(.systemGray))
                
                HStack(spacing: 12) {
                    Image(uiImage: #imageLiteral(resourceName: "tears_of_joy"))
                    Image(uiImage: #imageLiteral(resourceName: "tung"))
                    Image(uiImage: #imageLiteral(resourceName: "drop"))
                    Image(uiImage: #imageLiteral(resourceName: "twitter_heart"))
                    Image(uiImage: #imageLiteral(resourceName: "fire"))
                    Image(uiImage: #imageLiteral(resourceName: "fingersUp"))
                    Image(uiImage: #imageLiteral(resourceName: "fingerUp"))
                }
            }
        }
    }
}

struct ReactionsView_Previews: PreviewProvider {
    static var previews: some View {
        ReactionsView()
            .preferredColorScheme(.dark)
    }
}
