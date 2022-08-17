//
//  CityCard.swift
//  Cities
//
//  Created by Ricardo Montemayor on 17/08/22.
//

import SwiftUI

struct CityCard: View {
    
    var city: City
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Text(city.name)
                    .font(.largeTitle.bold())
                Text(city.country)
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            
            HStack {
                Label(city.favoriteCount.formatted(), systemImage: "heart.fill")
                Label(city.travelCount.formatted(), systemImage: "airplane")
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.cyan)
        .cornerRadius(16)
        .shadow(color: .gray, radius: 8, x: 4, y: 4)
    }
}

struct CityCard_Previews: PreviewProvider {
    static let city = CityAPI.getCities()[2]
    static var previews: some View {
        CityCard(city: city)
    }
}


