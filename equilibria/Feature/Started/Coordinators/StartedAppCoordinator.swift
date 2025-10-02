//
//  StartedAppCoordinator.swift
//  equilibria
//
//  Created by Axl estevez on 02/10/25.
//

import SwiftUI
import Combine

class StartedAppCoordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func navigate(to destination: StartedSteps) {
        path.append(destination)
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popRoot() {
        path.removeLast(path.count)
    }
}
