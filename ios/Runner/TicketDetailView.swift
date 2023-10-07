//
//  TicketDetailView.swift
//  FlightTicketBrowser
//
//  Created by Takuya Aso on 2021/12/29.
//

import SwiftUI

struct TicketDetailView: View {
    
    let ticketInfo: TicketData
    @State private var isShowModal = false
    
    var body: some View {
        ScrollView ([.horizontal,.vertical]){
            VStack(alignment:HorizontalAlignment.leading,spacing: .zero) {
                Text(//ticketInfo.destinationCode
                    "Tickets:")
                .font(.custom("SF Pro Display", size: 18, relativeTo: .title3))
                .padding(.bottom, 10)
                TicketDetailTopView(ticketInfo: ticketInfo)
                ZStack {
                    LREdgeCutShapeView()
                        .fill(Color.init(hex: "#E9E9E9"), style: FillStyle(eoFill: false, antialiased: false))
                        .frame(maxWidth: .infinity)
                        .frame(height: 24.0)
                    LineShape()
                        .stroke(Color(uiColor: .white), style: StrokeStyle(lineWidth: 1, dash: [2]))
                        .frame(height: 1.0)
                }
                TicketDetailMainView(ticketInfo: ticketInfo)
            }
            .frame(minWidth: 350, maxWidth: .infinity,alignment: .leading)
            .padding(.all, 20.0)
        }
        .background(Color(UIColor.white))
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Ticket Info")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isShowModal.toggle()
                } label: {
                    VStack(spacing: .zero) {
                        Image(systemName: "qrcode")
                            .resizable()
                            .scaledToFit()
                        Text("PASS")
                            .font(.system(size: 10.0))
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.primary)
                }
            }
        }
    }
}

struct TicketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TicketDetailView(ticketInfo: TicketData(name:"Amr", imageUrl:"https://www.google.com", ticketNumber:"Number", type: "Type", seat: "Seat"))
    }
}
