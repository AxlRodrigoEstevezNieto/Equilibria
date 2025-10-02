//
//  ContentView.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var coordinator: StartedAppCoordinator
    
    var body: some View {
        Navbar(title: "", onBack: coordinator.pop)
        Spacer()
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        Spacer()
    }
}
