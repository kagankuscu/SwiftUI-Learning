//
//  FunFactsView.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct FunFactsView: View {
    @State private var funFact = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 400)
            
            Button {
                funFact = information.funFacts.randomElement()!
            } label: {
                Text("Show Random Fact")
                    .padding()
                    .background(.cyan)
                    .cornerRadius(15)
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
