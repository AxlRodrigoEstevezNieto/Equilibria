//
//  Navbar.swift
//  equilibria
//
//  Created by Axl estevez on 02/10/25.
//

import SwiftUI

struct Navbar: View {
    private var labelText: String
    private var colorBackbutton: Color?
    private var backAction: () -> Void
    
    init(labelText: String, colorBackbutton: Color? = nil, backAction: @escaping () -> Void = { }) {
        self.labelText = labelText
        self.backAction = backAction
        self.colorBackbutton = colorBackbutton
    }
    
    var body: some View {
        ZStack {
            HStack {
                Button {
                    backAction()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(colorBackbutton ?? .blue)
                        .font(.system(size: 22, weight: .medium))
                }
                Spacer()
            }
            Text(labelText)
                .font(.headline)
                .bold()
        }
        .padding()
        .background(Color(.background))
        .ignoresSafeArea(edges: .bottom)
    }
}
