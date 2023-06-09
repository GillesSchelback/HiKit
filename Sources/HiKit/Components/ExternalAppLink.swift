//
//  LinkButton.swift
//  HiKit
//
//  Created by Gilles Schelback on 08/06/2023.
//

import SwiftUI

struct ExternalAppLink: View {
    var code: String
    var data: ExternalAppData {
        ExternalAppData.getAppData(for: code)
    }

    var body: some View {
        Link(destination: URL(string: data.hyperLink)!) {
            Circle()
                .fill(data.backgroundGradient)
                .frame(width: 40)
                .overlay {
                    Image(data.appIcon, bundle: .module)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .accessibilityLabel("Link to open developers \(data.appIcon) profile")
        }
        .accessibilityHidden(true)
    }
}
