//
//  TicketDetailMainView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/30.
//

import SwiftUI

struct TicketDetailMainView: View {
    
    let ticketInfo: TicketData
    
    var body: some View {
        VStack(alignment: .leading,spacing: 15.0) {
            HStack(alignment: .center) {
                Text("Ticket Type:")
                .font(.custom("SF Pro Display", size: 15))
                .foregroundColor(.black)
                Text(ticketInfo.type
                ).font(.custom("SF Pro Display", size: 15))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.init(hex: "#4C4C4C"))
            }
            HStack(alignment: .center) {
                Text(//ticketInfo.destinationCode
                    "Seat:")
                .font(.custom("SF Pro Display", size: 15))
                .foregroundColor(.black)
                Text(ticketInfo.seat).font(.custom("SF Pro Display", size: 15))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.init(hex: "#4C4C4C"))
            }
        }
        .padding(.horizontal, 15.0)
        .padding(.top, 12.0)
        .padding(.bottom, 20.0)
        .frame(maxWidth: .infinity,alignment: .leading)
        .background(Color.init(hex: "#E9E9E9"))
        .cornerRadius(12.0, corners: [.bottomLeft, .bottomRight])
    }
}

struct TicketDetailMainView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailMainView(ticketInfo: TicketData(name:"Amr", imageUrl:"https://www.google.com", ticketNumber:"Number", type: "Type", seat: "Seat"))
    }
}
