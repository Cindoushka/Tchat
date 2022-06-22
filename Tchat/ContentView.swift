//
//  ContentView.swift
//  Tchat
//
//  Created by Cindy Bajoni on 25/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChatView()
//                .badge(10)
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("First")
                }
            PagedeChat()
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Chat")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
