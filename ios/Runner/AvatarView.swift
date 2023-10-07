//
//  AvatarView.swift
//  FlightTicketBrowser
//
//  Created by Omega on 06/10/2023.
//

import SwiftUI

struct AvatarView: View {
    let url: URL
    let size: CGFloat

    var body: some View {
        AsyncImage(url: url){ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            Image(systemName: "photo.fill")
        }
        .frame(width: size, height: size)
        .cornerRadius(size / 2)
        .overlay(
            Circle()
                .stroke(Color.black, lineWidth: 4)
                .frame(width: size, height: size)
        )
        .shadow(radius: 10)
    }
}

struct AvatarView_Previews: PreviewProvider {

    static  var previews: some View {
        VStack {
            AvatarView(url: URL(string: "https://ishtiz.com/wp-content/uploads/2021/04/cropped-facebookIcon.png")!, size: 100)
        }
        .padding()
    }

}
