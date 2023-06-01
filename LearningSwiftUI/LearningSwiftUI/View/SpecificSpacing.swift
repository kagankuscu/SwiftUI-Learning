//
//  SpecificSpacing.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct SpecificSpacing: View {
    var body: some View {
        Text("Specific Spacing")
        HStack(spacing: 20) {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct SpecificSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DefaultSpacing()
        }
    }
}
