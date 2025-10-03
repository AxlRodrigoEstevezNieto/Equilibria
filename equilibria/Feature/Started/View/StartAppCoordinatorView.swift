//
//  StartAppCoordinatorView.swift
//  equilibria
//
//  Created by Axl estevez on 02/10/25.
//

import SwiftUI

struct StartAppCoordinatorView: View {
    
    @StateObject private var startedAppCoordinator = StartedAppCoordinator()
    
    var body: some View {
        NavigationStack(path: $startedAppCoordinator.path) {
            StartAppVIew()
                .toolbar(.hidden)
                .navigationDestination(for: StartedSteps.self) { step in
                    switch step {
                    case .startStep:
                        StartAppVIew()
                            .toolbar(.hidden)
                    case .optionsStartStep:
                        OptionsForStarView()
                            .toolbar(.hidden)
                    case .loginStep:
                        LoginView()
                            .toolbar(.hidden)
                    case .singUpStep:
                        ContentView()
                            .toolbar(.hidden)
                    }
                }
        }
        .environmentObject(startedAppCoordinator)
    }
}
