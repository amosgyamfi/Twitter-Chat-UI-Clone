//
//  SearchView.swift
//  TwitterChat
//
//  Created by Amos Gyamfi on 08.11.2021.
//

import SwiftUI

struct SearchView: View {
    
    @State private var search: String = ""

    var body: some View {
        HStack{ // Search bar
            //Spacer(minLength: 70)
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
                .padding(.leading, 8)
            
            TextField("Search for people and groups", text: $search)
        } // Search bar ends
        .frame(maxWidth: 392, maxHeight: 32)
        .background(Color(.systemGray5))
        .cornerRadius(25)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .preferredColorScheme(.dark)
    }
}
