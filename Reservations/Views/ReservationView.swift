//
//  ReservationView.swift
//  Reservations
//
//  Created by Eric Cartman on 09.02.2023.
//

import SwiftUI

struct ReservationView: View {
    @EnvironmentObject var model:Model
    
    var body: some View {
        
    let restaurant = model.reservation.restaurant
        
    ScrollView {
        VStack {
            LittleLemonLogo()
                .padding(.bottom, 20)
                
            if restaurant.city.isEmpty {
                    
                VStack {
                    // if city is empty no reservation has been
                    // selected yet, so, show the following message
                    Text("No Reservation Yet")
                        .foregroundColor(.gray)
                }
                .frame(maxHeight:.infinity)
                    
            } else {
                    
                    Text("RESERVATION")
                        .padding([.leading, .trailing], 40)
                        .padding([.top, .bottom], 8)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(20)
                        .padding(.bottom, 20)
                
                    HStack {
                        VStack (alignment: .leading) {
                            Text("RESTAURANT")
                                .font(.subheadline)
                                .padding(.bottom, 5)
                            RestaurantView(restaurant: restaurant)
                        }
                    Spacer()
                }
                .frame(maxWidth:.infinity)
                .padding(.bottom, 20)
                    
                    Divider()
                        .padding(.bottom, 20)
                    
                    
                    VStack {
                        nameField
                        
                        emailField
                        
                        phoneNumberField
                        
                    }
                    .padding(.bottom, 20)
                    
                    
                    numOfPartiesField
                    
                    VStack {
                        dateField
                        
                        timeField
                    }
                    .padding(.bottom, 20)
                    
                    requestField
                    
                }
            }
        }
        .padding(50)
    }
    
    var nameField: some View {
        HStack {
            Text("NAME: ")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            Text(model.reservation.customerName)
            Spacer()
        }
    }
    
    var emailField: some View {
        HStack {
            Text("E-MAIL: ")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            Text(model.reservation.customerEmail)
            Spacer()
        }
    }
    
    var phoneNumberField: some View {
        HStack {
            Text("PHONE: ")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            Text(model.reservation.customerPhoneNumber)
            Spacer()
        }
    }
    
    var numOfPartiesField: some View {
        HStack {
            Text("PARTY: ")
                .foregroundColor(.gray)
            
                .font(.subheadline)
            
            Text("\(model.reservation.party)")
            Spacer()
        }
    }
    
    var dateField: some View {
        HStack {
            Text("DATE: ")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            Text(model.reservation.reservationDate, style: .date)
            Spacer()
        }
    }
    
    var timeField: some View {
        HStack {
            Text("TIME: ")
                .foregroundColor(.gray)
                .font(.subheadline)
            
            Text(model.reservation.reservationDate, style: .time)
            Spacer()
        }
    }
    
    var requestField: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("SPECIAL REQUESTS:")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                Text(model.reservation.specialRequests)
            }
            Spacer()
        }
        .frame(maxWidth:.infinity)
    }
}

struct ReservationView_Previews: PreviewProvider {
    static var previews: some View {
        ReservationView().environmentObject(Model())
    }
}
