//
//  CarModel.swift
//  Cars
//
//  Created by Shafiqul  Islam on 5/10/23.
//

import Foundation

class CarModel : ObservableObject {
    @Published var cars = [Car]()
    
    init() {
        self.cars = DataServices.getLocalData()
    }
}
