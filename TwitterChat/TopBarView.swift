//
//  TopBarView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 08.11.2021.
//

import SwiftUI

struct TopBarView: View {

    var body: some View {
        HStack { // Top bar
            Image("sender_profile")
            Spacer()
            Text("Messages")
                .font(.title2)
            Spacer()
            Image(systemName: "gearshape")
        } // Top bar ends
        .padding(.bottom)
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
            .preferredColorScheme(.dark)
    }
}
