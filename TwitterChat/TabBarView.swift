//
//  TabBarView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 08.11.2021.
//

import SwiftUI

struct TabBarView: View {

    var body: some View {
        TabView{
            Text("")
                .tabItem{
                    Image(systemName: "message.fill")
                    Text("Messages")
                }
            
            Text("")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            Text("")
                .tabItem{
                    Image(systemName: "circle.hexagonpath")
                    Text("Spaces")
                }
            
            if #available(iOS 15.0, *) {
                Text("")
                    .badge(10)
                    .tabItem{
                        Image(systemName: "bell.fill")
                        Text("Notifications")
                    }
            } else {
                // Fallback on earlier versions
            }
        }
        .frame(maxHeight: 73)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .preferredColorScheme(.dark)
    }
}
