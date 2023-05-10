//
//  Car_Detail_View.swift
//  Cars
//
//  Created by Shafiqul  Islam on 5/10/23.
//

import SwiftUI

struct Car_Detail_View: View {
    
    var car:Car
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                //MARK: Recipe Image
                Image(car.Name)
                    .resizable()
                    .scaledToFit()
                Text("Car Details: ")
                    .font(.headline)
                    .padding(.leading)
                VStack(alignment: .leading){
//                    Text(car.Name.capitalized)
//                        .font(.title3)
                    Text("Miles per Gallon:  " + String(car.Miles_per_Gallon))
                    Text("Cylinder: " + String(car.Cylinders))
                    Text("Displacement: " + String(car.Displacement))
                    Text("Horsepower: " + String(car.Horsepower))
                    Text("Weight in lbs: " + String(car.Weight_in_lbs))
                    Text("Acceleration: " + String(car.Acceleration))
                    Text("Year: " + car.Year)
                    Text("Origin: " + car.Origin)
                }
                .padding(.leading)
                .padding(/*@START_MENU_TOKEN@*/.top, 1.0/*@END_MENU_TOKEN@*/)
                
        }
                    
              
            
        }
        .navigationBarTitle(car.Name.capitalized)
    }
}

struct Car_Detail_View_Previews: PreviewProvider {
    static var previews: some View {
        let models = CarModel()
        Car_Detail_View(car: models.cars[0])
    }
}
