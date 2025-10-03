//
//  ButtonWithArrow.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import SwiftUI

struct ButtonAppImage: View {
    
    var title: String? = ""
    var backgroundColor: Color = .background
    var fontColor: Color = .black
    var fontColorImage: Color = .black
    var geometryProxy: GeometryProxy?
    let imageType: CustomImageType
    var fontCustom: Font? = .headline
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack (spacing: 0) {
                Text(title ?? "")
                    .font(fontCustom)
                    .fontWeight(.regular)
                    .foregroundStyle(fontColor)
                    .padding(.horizontal, 16)
                
                Spacer()
                
                switch imageType {
                case .asset(let name):
                    Image(name)
                        .resizable().foregroundStyle(fontColorImage)
                        .frame(width: 15, height: 15)
                        .padding(.horizontal, 16)
                case .system(let name):
                    Image(systemName: name)
                        .resizable().foregroundStyle(fontColorImage)
                        .frame(width: 15, height: 15)
                        .padding(.horizontal, 16)
                }
                
            }
            .onTapGesture {
                action()
            }
        }
        .frame(width: frameWidth, height: frameHeight)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 15, style: .continuous))

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
