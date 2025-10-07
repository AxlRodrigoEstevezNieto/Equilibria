//
//  LoginView.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @EnvironmentObject private var cordinator: StartedAppCoordinator
    
    var body: some View {
        
        Navbar(labelText: "", colorBackbutton: .titleApp) {
            cordinator.pop()
        }
        
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ScrollView {
                    VStack {
                        Image("login-icon")
                            .resizable()
                            .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.3)
                            .padding(.top, 16)
                                               
                        TextFieldApp(text: $email, placeholder: "correo electronico", geometryProxy: geometry)
                        
                        TextFieldApp(text: $password, placeholder: "Contraseña", isSecure: true, geometryProxy: geometry)
                        
                        ButtonApp(
                            title: "Iniciar Sesión",
                            backgroundColor: .titleApp,
                            fontColor: .white,
                            geometryProxy: geometry
                        ) {
                            
                        }
                        .padding(.top, 16)
                        
                        Divider()
                            .frame(height: 16)
                            .foregroundStyle(.green)
                            .padding(.horizontal, geometry.size.width * 0.8)
                        
                        
                        ButtonAppImage(
                            title: "Iniciar Sesión con google",
                            backgroundColor: .blackMedium,
                            fontColor: Color("whiteColor"),
                            geometryProxy: geometry,
                            imageType: .asset(name: "google-icon"),
                            fontCustom: AppFonts.bitcountSingleInkBold(size: 14)
                        ) {
                            
                        }
                        
                        ButtonAppImage(
                            title: "Iniciar Sesión con Apple",
                            backgroundColor: .blackMedium,
                            fontColor: Color("whiteColor"),
                            fontColorImage: Color("whiteColor"),
                            geometryProxy: geometry,
                            imageType: .system(name: "apple.logo"),
                            fontCustom: AppFonts.bitcountSingleInkBold(size: 14)
                        ) {
                            
                        }
                        
                        
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color("background"))
            .ignoresSafeArea(edges: .bottom)
        }
        .padding(.top, -16)
    }
}
