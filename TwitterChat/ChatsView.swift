//
//  ChatsView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 10.11.2021.
//

import SwiftUI

struct ChatsView: View {

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.backward")
                Spacer()
                VStack {
                    Image("amos")
                    Text("Amos Gyamfi")
                        .font(.headline)
                }
               Spacer()
               Image(systemName: "info.circle")
            }
            ScrollView { // Chat area
                VStack {
                    HStack { // Left Message
                        //InboundDoubleLineView()
                        ConsecutiveInboundView()
                        Spacer()
                    }
                    
                    HStack { // Right Message
                        Spacer()
                        ConsecutiveOutboundView()
                    }
                    
                    HStack { // Left Message
                        SingleInboundView()
                        Spacer()
                    }
                    HStack { // Right Message
                        Spacer()
                        ShortOutboundView()
                       
                    }
                    
                    HStack { // Left Message
                        DoubleInboundView()
                        Spacer()
                    }
                    
                    HStack { // Right Message
                        Spacer()
                        SingleOutboundView()
                    }
                    
                    HStack { // Left Message
                        ConsecutiveInboundView()
                        Spacer()
                    }
                    
                    HStack { // Right Message
                        Spacer()
                        ConsecutiveOutboundView()
                    }
                    
                    HStack { // Left Message
                       LongMessageInboundView()
                        Spacer()
                    }
                    
                    HStack { // Right Message
                        Spacer()
                       OutboundImageView()
                    }
                    
                }
                .padding()
            } // Chat area
            TabBarView()
        }
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
            .preferredColorScheme(.dark)
    }
}
