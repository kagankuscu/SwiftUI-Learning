//
//  StoryView.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
//        VStack {
//            Text("My Story")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .padding()
//
//            ScrollView {
//                Text(information.story)
//                    .font(.body)
//                    .padding()
//            }
//        }
//        .padding()
        NavigationStack {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
