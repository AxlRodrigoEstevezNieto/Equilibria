//
//  TextFieldApp.swift
//  equilibria
//
//  Created by Axl estevez on 07/10/25.
//

import SwiftUI

struct TextFieldApp: View {
    @Binding var text: String
    
    var placeholder: String
    var isSecure: Bool = false
    var geometryProxy: GeometryProxy?
    
    @State private var showPassword = false
    
    var body: some View {
        HStack {
            if isSecure {
                if showPassword {
                    TextField(placeholder, text: $text)
                        .foregroundStyle(.blackMedium)
                        .autocapitalization(.none)
                        .textContentType(.password)
                } else {
                    SecureField(placeholder, text: $text)
                        .textContentType(.password)
                        .foregroundStyle(.blackMedium)
                }
                
                Button(action: {
                    withAnimation {
                        showPassword.toggle()
                    }
                }) {
                    Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.gray)
                }
            } else {
                TextField(placeholder, text: $text)
                    .foregroundStyle(.blackMedium)
                    .autocapitalization(.none)
            }
        }
        .frame(width: frameWidth)
        .padding()
        .background(Color(.white))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(.titleApp, lineWidth: 1)
        )
    }
    
    
    private var frameWidth: CGFloat {
        if let geometry = geometryProxy {
            return geometry.size.width * 0.8
        } else {
            return .infinity
        }
    }
    
    private var frameHeight: CGFloat {
        if let geometry = geometryProxy {
            return geometry.size.height * 0.08
        } else {
            return 35
        }
    }
}
