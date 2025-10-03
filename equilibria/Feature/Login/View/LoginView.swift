//
//  LoginView.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var cordinator: StartedAppCoordinator
    
    var body: some View {
        
        Navbar(labelText: "", colorBackbutton: .titleApp) {
            cordinator.pop()
        }
        
        Spacer()
        
        Text("En Construcción")
            .foregroundStyle(.titleApp)
            .font(AppFonts.montserrat(size: 22))
        
        Spacer()
    }
}
