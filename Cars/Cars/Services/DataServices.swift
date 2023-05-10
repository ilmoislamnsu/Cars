//
//  DataServices.swift
//  Cars
//
//  Created by Shafiqul  Islam on 5/10/23.
//

import Foundation

class DataServices {
    
    static func getLocalData() -> [Car]{
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "datas", ofType: "json")
        
        guard pathString != nil else {
            return [Car]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
       
        // Create a data object
        do {
            let data = try Data(contentsOf: url)
        
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do{
                let carData = try decoder.decode([Car].self, from: data)
        
        // Add the unique IDs
                for r in carData {
                    r.id = UUID()
                }
        
        //Return Data
                return carData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [Car]()
        
    }
}
