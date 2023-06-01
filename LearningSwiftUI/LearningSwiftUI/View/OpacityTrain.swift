//
//  OpacityTrain.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct OpacityTrain: View {
    var longerTrain: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                Image(systemName: "train.side.middle.car")
                    .opacity(longerTrain ? 1 : 0)
                Image(systemName: "train.side.front.car")
            }
        }
    }
}

struct OpacityTrain_Previews: PreviewProvider {
    static var previews: some View {
        OpacityTrain(longerTrain: true)
        OpacityTrain(longerTrain: false)
    }
}
