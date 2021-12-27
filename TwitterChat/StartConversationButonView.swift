//
//  StartConversationButtonView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 09.11.2021.
//

import SwiftUI

struct StartConversationButtonView: View {
    let TwitterBlue = Color(#colorLiteral(red: 0.1137254902, green: 0.6078431373, blue: 0.937254902, alpha: 1))
    var body: some View {
        TwitterBlue
            .clipShape(Circle())
            .frame(width: 60, height: 60)
            .overlay(Image(systemName: "plus.message.fill")
                        .font(.title)
            )
    }
}

struct StartConversationButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartConversationButtonView()
            .preferredColorScheme(.dark)
    }
}
