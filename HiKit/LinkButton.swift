//
//  LinkButton.swift
//  HiKit
//
//  Created by Gilles Schelback on 08/06/2023.
//

import SwiftUI

struct LinkButton: View {
    var code: String
    var data: AppData {
        getAppData(code: code)
    }

    var body: some View {
        Link(destination: URL(string: data.link)!) {
            Circle()
                .fill(data.backgroundGradient)
                .frame(width: 40)
                .overlay {
                    Image(data.icon, bundle: HiConstants.bundleIdentifier)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
        }
    }
    
    func getAppData(code: String) -> AppData {
        HiConstants.apps[code]!
    }
}
