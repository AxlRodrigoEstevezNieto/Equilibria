//
//  OptionsForStarView.swift
//  equilibria
//
//  Created by Axl estevez on 02/10/25.
//

import SwiftUI

struct OptionsForStarView: View {
    
    @EnvironmentObject private var coordinator: StartedAppCoordinator
    
    var body: some View {
        Navbar(title: "") {
            coordinator.pop()
        }
        GeometryReader { geometry in
            VStack {
                ScrollView {
                    VStack {
                        Image("start-icon")
                            .resizable()
                            .frame(width: geometry.size.width * 0.6, height: geometry.size.height * 0.4)
                        
                        Text("Para comenzar, inicia sesión si ya tienes una cuenta, o regístrate para crear una nueva y empezar a organizar nuestras deudas.")
                            .multilineTextAlignment(.center)
                            .font(AppFonts.montserrat(size: 14))
                            .foregroundStyle(.secondary)
                            .padding(.top, geometry.size.height * 0.1)
                            .padding(.horizontal, 16)
                        
                        
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
                .scrollIndicators(.hidden)
            }
            .background(Color("background"))
        }
    }
}
