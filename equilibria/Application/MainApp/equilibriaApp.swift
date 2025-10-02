//
//  equilibriaApp.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import SwiftUI

@main
struct equilibriaApp: App {
    
    @StateObject private var authManger = AuthManager.shared
    @StateObject private var appStateManager = AppStateManger.shared
    
    var body: some Scene {
        WindowGroup {
            Group {
                if !appStateManager.isStartComplete {
                    StartAppVIew()
                } else if appStateManager.isStartComplete && !authManger.isAuthenticate {
                    //Login View
                } else if appStateManager.isStartComplete && authManger.isAuthenticate {
                    //HomeView
                }
            }
        }
    }
}
