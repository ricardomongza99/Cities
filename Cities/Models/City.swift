//
//  City.swift
//  Cities
//
//  Created by Ricardo Montemayor on 17/08/22.
//

import Foundation

struct City: Identifiable {
    var id = UUID()
    var name: String
    var country: String
    var image: String
    var favoriteCount: Int
    var travelCount: Int
}

class CityAPI {
    static func getCities() -> [City] {
        return [City(name: "Madrid", country: "Spain", image: "madrid", favoriteCount: 7893, travelCount: 80234),
                City(name: "Paris", country: "France", image: "paris", favoriteCount: 3000, travelCount: 10045),
                City(name: "Dubrovnik", country: "Croatia", image: "dubrovnik", favoriteCount: 8564, travelCount: 12034),
                City(name: "Barcelona", country: "Spain", image: "barcelona", favoriteCount: 23123, travelCount: 6583),
                City(name: "Cape Town", country: "South Africa", image: "cape_town", favoriteCount: 419, travelCount: 342),
                City(name: "Venice", country: "Italy", image: "venice", favoriteCount: 8564, travelCount: 12034),
                City(name: "Prague", country: "Czech Republic", image: "prague", favoriteCount: 12332, travelCount: 12765),
                City(name: "San Francisco", country: "United States", image: "san_francisco", favoriteCount: 95631, travelCount: 23675),
                City(name: "Tokyo", country: "Japan", image: "tokyo", favoriteCount: 23021, travelCount: 8000),
                City(name: "Kyoto", country: "Japan", image: "kyoto", favoriteCount: 782, travelCount: 3212),
                City(name: "Florence", country: "Italy", image: "florence", favoriteCount: 8321, travelCount: 35531),
                City(name: "Rome", country: "Italy", image: "rome", favoriteCount: 34021, travelCount: 12034),
                City(name: "Guanajuato", country: "Mexico", image: "guanajuato", favoriteCount: 5921, travelCount: 1234),
                City(name: "Rio de Janeiro", country: "Brazil", image: "rio_de_janeiro", favoriteCount: 12312, travelCount: 13242),
                City(name: "Granada", country: "Spain", image: "granada", favoriteCount: 1521, travelCount: 3421),
        ]
    }
}
