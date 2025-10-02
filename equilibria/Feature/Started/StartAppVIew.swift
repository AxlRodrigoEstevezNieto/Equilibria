//
//  StartAppVIew.swift
//  debtManager
//
//  Created by Axl Rodrigo Estevez NIeto on 28/09/25.
//

import SwiftUI

struct StartAppVIew: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(spacing: 0) {
                
                ScrollView {
                    
                    VStack (spacing: 0) {
                        
                        Text("¡Te damos la bienvenida!")
                            .multilineTextAlignment(.center)
                            .font(AppFonts.montserratSemiBold(size: 25))
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
                        
                        ButtonWithArrow(
                            action: {
                                
                            },
                            title: "Comenzar",
                            backgroundColor: .titleApp,
                            fontColor: .black,
                            geometryProxy: geometry,
                            arrowImageName: ""
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
    }
}
