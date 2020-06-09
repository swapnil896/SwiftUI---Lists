//
//  ContentView.swift
//  ListsDemo
//
//  Created by Swapnil  Magar on 09/06/20.
//  Copyright © 2020 Swapnil Magar. All rights reserved.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

struct ContentView: View {
    var body: some View {
        let first = Restaurant(name: "Joe's original")
        let second = Restaurant(name: "The Real Joe's original")
        let third = Restaurant(name: "Original Joe's")
        let restaurants = [first, second, third]
        
        return List(restaurants) { restaurant in
            RestaurantRow(restaurant: restaurant)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
