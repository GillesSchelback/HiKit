//
//  StoryRow.swift
//  HiKit
//
//  Created by Gilles Schelback on 08/06/2023.
//

import SwiftUI

struct ContributionRow: View {
    var emoji: String
    var localizationKey: LocalizedStringKey
    
    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(.thinMaterial)
                .frame(width: 40)
                .overlay {
                    Text(emoji)
                }
                .accessibilityHidden(true)
            
            Text(localizationKey, bundle: .module)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.7))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
