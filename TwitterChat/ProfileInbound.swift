//
//  ProfileInbound.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 08.11.2021.
//

import SwiftUI

struct ProfileInbound: View {
    @State private var snooze = false
    let TwitterBlue = Color(#colorLiteral(red: 0.1137254902, green: 0.6078431373, blue: 0.937254902, alpha: 1))

    var body: some View {
        VStack { // Root vertical container
            
            VStack { // Above divider
                HStack {
                    Image(systemName: "arrow.left")
                    Spacer()
                    Text("Conversation Info")
                        .font(.headline)
                    Spacer()
                } // Header
                
                VStack { // Profile photo section
                    Image("adwoa")
                    Text("Adwoa Mansah")
                    Text("@adwMans")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }.padding()
                
            } // Above top divider ends
            
            Divider()
            HStack { // Settings section
                Text("Notifications")
                    .font(.title2)
                Spacer()
            }
            // Add a toggle here
            Toggle("Snooze notifications", isOn: $snooze)
            Divider()
            
            
            // Events messages Section
            VStack {
               
                Button {
                    print("")
                } label: {
                    Label("Block @adwMans", systemImage: "hand.raised")
                        .foregroundColor(TwitterBlue)
                        .padding(.top)
                }
                Button {
                    print("")
                } label: {
                    Label("Report @adwMans", systemImage: "exclamationmark.bubble")
                        .foregroundColor(TwitterBlue)
                        .padding()
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
            
            
        
            Text("")
                .foregroundColor(.pink)
                .fontWeight(.bold)
            Spacer()
            TabBarView()
        } // All views ends
        .padding(.horizontal)
    }
}

struct ProfileInbound_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInbound()
            .preferredColorScheme(.dark)
    }
}
