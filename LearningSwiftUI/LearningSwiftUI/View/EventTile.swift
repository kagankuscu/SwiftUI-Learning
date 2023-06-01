//
//  EventTile.swift
//  LearningSwiftUI
//
//  Created by Kagan Kuscu on 1.06.23.
//

import SwiftUI

struct EventTile: View {
    let event: Event
    let stripeHeigth = 15.0
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: event.symbol)
                .font(.title)
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.title)
                Text(event.date,
                     format: Date.FormatStyle()
                    .day(.defaultDigits)
                    .month(.wide))
                
                Text(event.location)
            }
        }
        .padding()
        .padding(.top, stripeHeigth)
        .background{
            ZStack(alignment: .top) {
                Rectangle()
                    .opacity(0.3)
                
                Rectangle()
                    .frame(maxHeight: stripeHeigth)
            }
            .foregroundColor(.teal)
        }
        .clipShape(RoundedRectangle(cornerRadius: stripeHeigth))
    }
}

struct EventTile_Previews: PreviewProvider {
    static let event = Event(title: "Buy Daisies", date: .now, location: "Flower Shop", symbol: "gift")
    
    static var previews: some View {
        EventTile(event: event)
    }
}
