//
//  MessageCompositorView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 09.11.2021.
//

import SwiftUI

struct MessageCompositorView: View {

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                TopBarView()
                SearchView()
                MessageListView(messages: MessageData)
                TabBarView()
                    .frame(maxHeight: 48)
            }
            .padding()

                StartConversationButtonView()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 80, trailing: 16))
            
        }
    }
}

struct MessageCompositorView_Previews: PreviewProvider {
    static var previews: some View {
        MessageCompositorView()
            .preferredColorScheme(.dark)
    }
}
