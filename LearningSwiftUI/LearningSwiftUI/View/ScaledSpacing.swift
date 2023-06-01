//
//  ScaledSpacing.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct ScaledSpacing: View {
    @ScaledMetric var trainCarSpace = 5
    
    var body: some View {
        Text("Scaled Spacing")
        HStack(spacing: trainCarSpace) {
            TrainCar(.rear)
            TrainCar(.middle)
            TrainCar(.front)
        }
        TrainTrack()
    }
}

struct ScaledSpacing_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ScaledSpacing()
        }
    }
}
