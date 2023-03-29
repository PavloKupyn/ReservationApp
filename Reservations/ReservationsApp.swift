//
//  ReservationsApp.swift
//  Reservations
//
//  Created by Eric Cartman on 27.01.2023.
//

import SwiftUI

@main
struct ReservationsApp: App {
    @StateObject var model = Model()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
