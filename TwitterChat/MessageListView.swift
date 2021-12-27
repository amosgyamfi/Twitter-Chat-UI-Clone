//
//  MessageListView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 10.11.2021.
//

import SwiftUI

struct MessageListView: View {
    
    var messages: [MessagesStructure] = []
    
    var body: some View {
        VStack {
            
                List(messages) {
                    item in
                    HStack(alignment: .top) {
                        Image(item.photo)
                            
                        VStack(alignment: .leading) {
                            HStack(alignment: .top) {
                                Text("\(item.name)")
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                    .layoutPriority(1)
                               
                                Text("\(item.handle)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                    .lineLimit(1)
                                    .layoutPriority(1)
                                Spacer()
                                Text("\(item.date)")
                                    .font(.subheadline)
                                    .lineLimit(1)
                                
                            }
                            Text("\(item.summary)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                } //LIST STYLES
                // 1. Automatic
                //.listStyle(.automatic)
                // 2. Grouped
                //.listStyle(.grouped)
                // 3. Inset
                //.listStyle(.inset)
                // 4. Combined: Inset and Grouped
                //.listStyle(.insetGrouped)
                // 5. Plain
                .listStyle(.plain)
          
            // Add Tab Bar here
            //BottomTab()
        } // All views
        
        
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView(messages: MessageData)
            .preferredColorScheme(.dark)
    }
}
