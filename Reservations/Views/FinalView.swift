//
//  MainView.swift
//  Reservations
//
//  Created by Eric Cartman on 06.02.2023.
//

import SwiftUI

struct FinalView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        TabView (selection: $model.tabViewSelectedIndex){
            LocationsView()
                .tag(0)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "fork.knife")
                    }
                }
            
            ReservationView()
                .tag(1)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
        }
        .ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
            .environmentObject(Model())
    }
}
