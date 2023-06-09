//
//  StoryRow.swift
//  HiKit
//
//  Created by Gilles Schelback on 08/06/2023.
//

import SwiftUI

struct ContributionRow: View {
    var emoji: String
    var text: String
    
    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(.thinMaterial)
                .frame(width: 40)
                .overlay {
                    Text(emoji)
                }
            
            Text(text)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.7))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct StoryRow_Previews: PreviewProvider {
    static var previews: some View {
        ContributionRow(emoji: "🎧", text: "Hours of music which led to the discovery of some awesome songs")
    }
}
