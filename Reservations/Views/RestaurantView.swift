//
//  listItem.swift
//  Reservations
//
//  Created by Eric Cartman on 06.02.2023.
//

import SwiftUI

struct RestaurantView: View {
    var restaurant: RestaurantLocation
    var body: some View {
        VStack(alignment: .leading) {
            Text(restaurant.city)
                .font(.title2)
            Text("\(restaurant.neighborhood) \(restaurant.phoneNumber)")
                .foregroundColor(.gray)
                .font(.caption)
        }
    }
}

struct listItem_Previews: PreviewProvider {
    static var previews: some View {
        let item = RestaurantLocation(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: " - (702) 555-9898")

        RestaurantView(restaurant: item)
            .environmentObject(Model())
    }
}

