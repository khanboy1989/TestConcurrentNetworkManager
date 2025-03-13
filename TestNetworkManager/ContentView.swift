//
//  ContentView.swift
//  TestNetworkManager
//
//  Created by Serhan Khan on 13/03/2025.
//

import SwiftUI
import ConcurrentNetworkManager



enum PostEndpointTarget {
    case posts
}


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

