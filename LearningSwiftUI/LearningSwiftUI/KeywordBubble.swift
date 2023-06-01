//
//  KeywordBubble.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct KeywordBubble: View {
    let keyword: String
    let symbol: String
    @ScaledMetric(relativeTo: .title) var paddingWith = 14.5
    
    var body: some View {
        Label(keyword, systemImage: symbol)
            .font(.title)
            .foregroundColor(.white)
            .padding(paddingWith)
            .background(.purple.opacity(0.75),in: Capsule())
        
    }
}

struct KeywordBubble_Previews: PreviewProvider {
    static let keywords = ["chives", "fern-leaf lavender"]
    static var previews: some View {
        VStack {
            ForEach(keywords, id: \.self) { word in
                KeywordBubbleDefaultPadding(keyword: word, symbol: "wind.circle")
            }
        }
    }
}
