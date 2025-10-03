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
    
    static func montserratBold(size: CGFloat) -> Font {
        .custom("Montserrat-Bold", size: size)
    }
    
    static func chillax(size: CGFloat) -> Font {
        .custom("ChillaxVariable-Bold_Medium", size: size)
    }
    
    static func chillaxBold(size: CGFloat) -> Font {
        .custom("ChillaxVariable-Bold", size: size)
    }
    
}
