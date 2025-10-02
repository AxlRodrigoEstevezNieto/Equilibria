//
//  Navbar.swift
//  equilibria
//
//  Created by Axl estevez on 02/10/25.
//

import SwiftUI

struct Navbar: View {
    var title: String
    var onBack: (() -> Void)?
    var body: some View {
        ZStack {
            HStack {
                Button {
                    onBack?()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.titleApp)
                        .font(.system(size: 25, weight: .medium))
                }
                Spacer()
            }
            Text(title)
                .font(.headline)
                .bold()
        }
        .ignoresSafeArea(.all)
        .padding()
        .background(Color("background"))
    }
}
