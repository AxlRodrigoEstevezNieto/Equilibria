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
                        Image("wallet-icon")
                            .resizable()
                            .frame(width: geometry.size.width * 0.6,  height: geometry.size.height * 0.4)
                            .padding(.top, 16)
                            .padding(.horizontal, 16)
                        
                        Text("¡Te damos la bienvenida!")
                            .font(AppFonts.bitcountSingleInk(size: 16))
                            .foregroundStyle(.pink)
                            .padding(.top, 16)
                        
                        Button("Continuar") {
                            
                        }
                        
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                }
                .scrollIndicators(.hidden)
                
            }
            .background(
                Color("background")
            )
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
}
