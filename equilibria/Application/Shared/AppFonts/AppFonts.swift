//
//  AppFonts.swift
//  debtManager
//
//  Created by Axl Rodrigo Estevez NIeto on 02/10/25.
//

import Foundation
import SwiftUI

enum AppFonts {
    
    static func bitcountSingleInk(size: CGFloat) -> Font {
        .custom("BitcountSingleInk-Regular", size: size)
    }
    
    static func bitcountSingleInkBold(size: CGFloat) -> Font {
        .custom("BitcountSingleInk-Regular_Bold", size: size)
    }
    
    static func montserrat(size: CGFloat) -> Font {
        .custom("Montserrat-Regular", size: size)
    }
    
    static func montserratMedium(size: CGFloat) -> Font {
        .custom("Montserrat-Medium", size: size)
    }
    
    static func montserratSemiBold(size: CGFloat) -> Font {
        .custom("Montserrat-SemiBold", size: size)
    }
    
    
    
}
