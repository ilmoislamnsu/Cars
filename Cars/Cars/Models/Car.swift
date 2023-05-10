//
//  car.swift
//  Cars
//
//  Created by Shafiqul  Islam on 5/10/23.
//

import Foundation

class Car: Identifiable, Decodable {
    
    var id:UUID?
    
    var Name: String
    var Miles_per_Gallon: Int!
    var Cylinders : Int!
    var Displacement: Int!
    var Horsepower: Int!
    var Weight_in_lbs : Int!
    var Acceleration: Double
    var Year: String
    var Origin: String
    
}
