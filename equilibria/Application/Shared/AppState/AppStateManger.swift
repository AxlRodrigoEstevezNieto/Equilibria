//
//  AppStateManger.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import SwiftUI
import Combine

class AppStateManger: ObservableObject {
    
    static let shared = AppStateManger()
    
    private init() { }
    
    @Published var isStartComplete: Bool = false
}
