//
//  AuthManager.swift
//  equilibria
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import Foundation
import Combine

enum AuthMethod {
    case google
    case email
}

class AuthManager: ObservableObject {
    
    static let shared = AuthManager()
    
    private init() { }
    
    @Published var isAuthenticate: Bool = false
    @Published var authMethod: AuthMethod = .email
}
