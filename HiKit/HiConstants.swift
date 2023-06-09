//
//  HiConstants.swift
//  HiKit
//
//  Created by Gilles Schelback on 08/06/2023.
//

import SwiftUI
import Foundation

struct HiConstants {
    
    static let bundleIdentifier = Bundle(identifier: "own.project.HiKit")
    
    static let appCodes = [
        AppCode.ACAS001,
        AppCode.ACLI002,
        AppCode.ACGH003,
        AppCode.ACIG004,
        AppCode.ACSP005
    ]
    
    static let apps = [
        AppCode.ACAS001: AppData(icon: Icon.ACAS001I, link: Link.ACAS001L, backgroundGradient: BackgroundGradient.ACAS001G),
        AppCode.ACLI002: AppData(icon: Icon.ACLI002I, link: Link.ACLI002L, backgroundGradient: BackgroundGradient.ACLI002G),
        AppCode.ACGH003: AppData(icon: Icon.ACGH003I, link: Link.ACGH003L, backgroundGradient: BackgroundGradient.ACGH003G),
        AppCode.ACIG004: AppData(icon: Icon.ACIG004I, link: Link.ACIG004L, backgroundGradient: BackgroundGradient.ACIG004G),
        AppCode.ACSP005: AppData(icon: Icon.ACSP005I, link: Link.ACSP005L, backgroundGradient: BackgroundGradient.ACSP005G),
    ]
    
    struct AppCode {
        static let ACAS001 = "ACAS001"
        static let ACLI002 = "ACLI002"
        static let ACGH003 = "ACGH003"
        static let ACIG004 = "ACIG004"
        static let ACSP005 = "ACSP005"
    }
    
    struct Icon {
        static let ACAS001I = "App Store"
        static let ACLI002I = "LinkedIn"
        static let ACGH003I = "GitHub"
        static let ACIG004I = "Instagram"
        static let ACSP005I = "Spotify"
    }
    
    struct BackgroundGradient {
        private static let ACAS001C = [
            Color(red: 0.10588, green: 0.78431, blue: 0.98431),
            Color(red: 0.11373, green: 0.43922, blue: 0.94510),
        ]
        
        private static let ACLI002C = [
            Color(red: 0.27059 , green: 0.56078, blue: 0.85490),
            Color(red: 0.03922, green: 0.40000, blue: 0.76078),
        ]
        
        private static let ACGH003C = [
            Color(red: 0.53725, green: 0.38039, blue: 0.85098),
            Color(red: 0.43137, green: 0.25098, blue: 0.78824),
        ]
        
        private static let ACIG004C = [
            Color(red: 0.78824, green: 0.07451, blue: 0.72549),
            Color(red: 0.97647, green: 0.21569, blue: 0.24706),
            Color(red: 0.99608, green: 0.80392, blue: 0.00000),
        ]
        
        private static let ACSP005C = [
            Color(red: 0.47843, green: 0.92941, blue: 0.63922),
            Color(red: 0.11765, green: 0.84314, blue: 0.37647),
        ]
        
        static let ACAS001G = LinearGradient(gradient: Gradient(colors: ACAS001C), startPoint: .top, endPoint: .bottom)
        static let ACLI002G = LinearGradient(gradient: Gradient(colors: ACLI002C), startPoint: .top, endPoint: .bottom)
        static let ACGH003G = LinearGradient(gradient: Gradient(colors: ACGH003C), startPoint: .top, endPoint: .bottom)
        static let ACIG004G = LinearGradient(gradient: Gradient(colors: ACIG004C), startPoint: .top, endPoint: .bottom)
        static let ACSP005G = LinearGradient(gradient: Gradient(colors: ACSP005C), startPoint: .top, endPoint: .bottom)
    }
    
    struct Link {
        static let ACAS001L = "https://www.linkedin.com/in/gillesschelback"
        static let ACLI002L = "https://www.linkedin.com/in/gillesschelback"
        static let ACGH003L = "https://github.com/GillesSchelback"
        static let ACIG004L = "https://instagram.com/glls.schlbck?igshid=OGQ5ZDc2ODk2ZA=="
        static let ACSP005L = "https://open.spotify.com/user/11157654525?si=iuzGKLpSQySvAN2AxBwVoQ"
    }
}

struct AppData {
    var icon: String
    var link: String
    var backgroundGradient: LinearGradient
}
