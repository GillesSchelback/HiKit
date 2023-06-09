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
                Image("Memoji", bundle: HiConstant.bundleIdentifier)
                    .resizable()
                    .frame(width: 180, height: 180)
                    .padding(.bottom, 16)
                
                Text("Designed and developed by")
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
                    Text("How was this app established?")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ContributionRow(emoji: "🎧", text: "Hours of music which led to the discovery of some awesome songs")
                    ContributionRow(emoji: "🐶", text: "Walks with Odi to keep my sanity and get my daily dose of oxygen")
                    ContributionRow(emoji: "🚴🏼", text: "Go on adventures to clear my mind and come up with new ideas")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(14)
                .padding()
            }
        }
        .background {
            Image("Background", bundle: HiConstant.bundleIdentifier)
                .overlay { Rectangle().fill(.ultraThinMaterial) }
                .ignoresSafeArea()
        }
    }
}

struct HiView_Previews: PreviewProvider {
    static var previews: some View {
        HiView()
    }
}
