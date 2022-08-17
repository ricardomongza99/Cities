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
                metricsLabel(count: city.favoriteCount, systemImage: "heart.fill")
                metricsLabel(count: city.travelCount, systemImage: "airplane")
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(backgroundImage)
        .cornerRadius(16)
        .shadow(color: .gray, radius: 8, x: 4, y: 4)
    }
}

struct CityCard_Previews: PreviewProvider {
    static let city = CityAPI.getCities()[2]
    static var previews: some View {
        CityCard(city: city)
            .padding(40)
            .previewLayout(.fixed(width: 480, height: 300))
    }
}

extension CityCard {
    
    private var backgroundImage: some View {
        ZStack {
            Image(city.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            LinearGradient(
                gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                startPoint: .topLeading,
                endPoint: UnitPoint(x: 0.4, y: 1.0)
            )
        }
    }
    
    private func metricsLabel(count: Int, systemImage: String) -> some View {
        Label(count.formatted(.shorthand), systemImage: systemImage)
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .font(.caption)
            .background(.white)
            .cornerRadius(8)
            .foregroundColor(.gray)
    }
}


