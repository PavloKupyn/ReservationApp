//
//  Reservation.swift
//  Reservations
//
//  Created by Eric Cartman on 09.02.2023.
//

import Foundation
struct Reservation {
    
  var restaurant:RestaurantLocation = RestaurantLocation()
  var customerName:String = ""
  var customerEmail:String = ""
  var customerPhoneNumber:String = ""
  var reservationDate:Date = Date()
  var party:Int = 1
  var specialRequests:String = ""
  var id = UUID()
  
}
