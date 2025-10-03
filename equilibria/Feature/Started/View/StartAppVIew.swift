//
//  StartAppVIew.swift
//  debtManager
//
//  Created by Axl Rodrigo Estevez NIeto on 28/09/25.
//

import SwiftUI

struct StartAppVIew: View {
    
    @EnvironmentObject private var coordinator: StartedAppCoordinator
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ScrollView {
                    VStack (spacing: 0) {
                        
                        Text("¡Te damos la bienvenida!")
                            .multilineTextAlignment(.center)
                            .font(AppFonts.chillaxBold(size: 25))
                            .foregroundStyle(Color("title-app"))
                        
                        Image("icon-app")
                            .resizable()
                            .frame(width: geometry.size.width * 0.8,  height: geometry.size.height * 0.3)
                            .padding(.top, geometry.size.height * 0.05)
                            .padding(.horizontal, 16)
                        
                        Text("Divide+, Tú y Yo $")
                            .multilineTextAlignment(.center)
                            .font(AppFonts.bitcountSingleInkBold(size: 16))
                            .foregroundStyle(.secondary)
                            .padding(.top, geometry.size.height * 0.1)
                        
                        ButtonAppImage(
                            title: "Comenzar",
                            backgroundColor: .titleApp,
                            fontColor: .white,
                            fontColorImage: .white,
                            geometryProxy: geometry,
                            imageType: .system(name: "play.fill"),
                            fontCustom: AppFonts.chillaxBold(size: 18),
                            action: {
                                coordinator.navigate(to: .optionsStartStep)
                            },
                            
                        )
                        .padding(.horizontal, 16)
                        .padding(.top, geometry.size.height * 0.1)

                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
                .scrollIndicators(.hidden)
            }
            .background(
                Color("background")
            )
        }
        .onAppear {
            for family in UIFont.familyNames {
                print("Family: \(family)")
                for name in UIFont.fontNames(forFamilyName: family) {
                    print("  \(name)")
                }
            }
        }
    }
}
