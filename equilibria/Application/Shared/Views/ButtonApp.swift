//
//  ButtonApp.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import SwiftUI

struct ButtonApp: View {
    
    var title: String? = ""
    var backgroundColor: Color = .background
    var fontColor: Color = .black
    var geometryProxy: GeometryProxy?
    var action: () -> Void
    var fontCustom: Font? = .headline
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack (spacing: 16) {
                Text(title ?? "")
                    .font(fontCustom)
                    .fontWeight(.regular)
                    .foregroundStyle(fontColor)
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
            return geometry.size.height * 0.06
        } else {
            return 35
        }
    }
}
