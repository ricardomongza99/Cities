//
//  ContentView.swift
//  Cities
//
//  Created by Ricardo Montemayor on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    
    private var cities = CityAPI.getCities()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(cities) { city in
                        Text("\(city.name), \(city.country)")
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Cities")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
