//
//  TicketDetailTopView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/30.
//

import SwiftUI

struct TicketDetailTopView: View {
    
    let ticketInfo: TicketData
    
    var body: some View {
        HStack{
            AvatarView(url: URL(string: "https://ishtiz.com/wp-content/uploads/2021/04/cropped-facebookIcon.png")!, size: 35).padding(.trailing,5)
            VStack(alignment: .leading) {
                Text(//ticketInfo.destinationCode
                    "Marilyn Bridges James")
                .font(.custom("SF Pro Display", size: 18, relativeTo: .title3))
                Text(
                    //ticketInfo.destination
                    "#170122708123"
                ).font(.custom("SF Pro Display", size: 15, relativeTo: .caption2))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 20.0)
        .padding(.top, 20.0)
        .padding(.bottom, 8.0)
        .frame(maxWidth: .infinity,alignment: .leading)
        .background(Color.init(hex: "#E9E9E9"))
        .cornerRadius(12.0, corners: [.topLeft, .topRight])
        
    }
}

struct TicketDetailTopView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailTopView(ticketInfo: TicketData(name:"Amr", imageUrl:"https://www.google.com", ticketNumber:"Number", type: "Type", seat: "Seat"))
            .frame(height: 90.0)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
