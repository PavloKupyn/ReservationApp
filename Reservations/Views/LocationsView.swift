//
//  LocationsView.swift
//  Reservations
//
//  Created by Eric Cartman on 06.02.2023.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        VStack {
            LittleLemonLogo()
            .padding(.top, 50)
 
            Text(model.displayingReservationForm ? "Reservations Details" : "Select a location")
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)

            NavigationView {
                List {
                    ForEach(model.restaurants) { restaurant in
                        NavigationLink(destination: ReservationForm(restaurant)) {
                            RestaurantView(restaurant: restaurant)
                        }
                    }
                }
              .navigationBarTitle("")
              .navigationBarHidden(true)
              .scrollContentBackground(.hidden)
            }
        }
        .padding()
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(Model())
    }
}
