//
//  StoryRow.swift
//  HiKit
//
//  Created by Gilles Schelback on 08/06/2023.
//

import SwiftUI

struct StoryRow: View {
    var emoji: String
    var story: String
    
    var body: some View {
        HStack(spacing: 16) {
            Circle()
                .fill(.ultraThinMaterial)
                .frame(width: 40)
                .overlay {
                    Text(emoji)
                }
            
            Text(story)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.7))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct StoryRow_Previews: PreviewProvider {
    static var previews: some View {
        StoryRow(emoji: "🎧", story: "Hours of music which led to the discovery of some awesome songs")
    }
}
