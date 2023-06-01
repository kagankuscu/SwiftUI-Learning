//
//  Story.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import Foundation


struct Story {
    let pages: [StoryPage]
    
    subscript(_ pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
}

struct StoryPage {
    let text: String
    
    let choices: [Choice]
    
    init(_ text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}

struct Choice: Hashable {
    let text: String
    let destination: Int
}


