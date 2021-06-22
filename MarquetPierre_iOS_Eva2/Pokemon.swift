//
//  Pokemon.swift
//  MarquetPierre_iOS_Eva2
//
//  Created by Student05 on 22/06/2021.
//

import Foundation

enum Types: String{
    case water = "Water"
    case fire = "Fire"
    case grass = "Grass"
    case flying = "Flying"
    case dragon = "Dragon"
    case poison = "Poison"
}

struct Pokemon{
    
    var name: String
    var types: Types
    var imageName: String
    var generation: Int
    var pokedexNumber: Int
    var height: Int
    
}
