//
//  DefaulSpacing.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct DefaultSpacing: View {
    var body: some View {
        Text("Default Spacing")
        HStack {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct DefaultSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DefaultSpacing()
        }
    }
}
