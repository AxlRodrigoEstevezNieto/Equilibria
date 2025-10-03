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
        Navbar(labelText: "", colorBackbutton: .titleApp) {
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
                            .font(AppFonts.chillaxBold(size: 16))
                            .foregroundStyle(.secondary)
                            .padding(.top, geometry.size.height * 0.1)
                            .padding(.horizontal, 16)
                        
                        ButtonAppImage(
                            title: "Iniciar sesión",
                            backgroundColor: .titleApp,
                            fontColor: .white,
                            fontColorImage: .white,
                            geometryProxy: geometry,
                            imageType: .system(name: "person.badge.key"),
                            fontCustom: AppFonts.chillaxBold(size: 20)
                        ) {
                            coordinator.navigate(to: .loginStep)
                        }
                        .padding(.top, 16)
                        
                        ButtonAppImage(
                            title: "Registrarse",
                            backgroundColor: .blackMedium,
                            fontColor: .white,
                            fontColorImage: .white,
                            geometryProxy: geometry,
                            imageType: .system(name: "person.fill.badge.plus"),
                            fontCustom: AppFonts.chillaxBold(size: 20)
                        ) {
                            coordinator.navigate(to: .singUpStep)
                        }
                        .padding(.top, 16)
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
                .scrollIndicators(.hidden)
            }
            .background(Color("background"))
        }
    }
}
