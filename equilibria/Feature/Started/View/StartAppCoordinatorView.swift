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
                    case .loginStep:
                        OptionsForStarView()
                            .toolbar(.hidden)
                    case .singUpStep:
                        StartAppVIew()
                            .toolbar(.hidden)
                    }
                }
        }
        .environmentObject(startedAppCoordinator)
    }
}
