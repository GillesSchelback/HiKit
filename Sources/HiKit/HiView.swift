//
//  HiView.swift
//  HiKit
//
//  Created by Gilles Schelback on 08/06/2023.
//

import SwiftUI

public struct HiView: View {
    
    public init() { }
    
    public var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                Image("Memoji", bundle: .module)
                    .resizable()
                    .frame(width: 180, height: 180)
                    .padding(.bottom, 16)
                    .accessibilityRemoveTraits(.isImage)
                
                Text("How was this app established", bundle: .module)
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.bottom, 8)
                
                Text("Gilles Schelback")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.bottom, 16)
                
                HStack(spacing: 20) {
                    ForEach(HiConstant.appCodes, id: \.self) { code in
                        ExternalAppLink(code: code)
                    }
                }
                .padding(.bottom, 16)
                
                VStack(spacing: 16) {
                    Text("How was this app established", bundle: .module)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ContributionRow(emoji: "🎧", localizationKey: "Hours of music")
                    ContributionRow(emoji: "🐶", localizationKey: "Walks with Odi")
                    ContributionRow(emoji: "🚴🏼",  localizationKey: "Go on adventures")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(14)
                .padding()
            }
        }
        .background {
            Image("Background", bundle: .module)
                .overlay { Rectangle().fill(.ultraThinMaterial) }
                .ignoresSafeArea()
                .accessibilityHidden(true)
        }
    }
}

struct HiView_Previews: PreviewProvider {
    static var previews: some View {
        HiView()
    }
}
