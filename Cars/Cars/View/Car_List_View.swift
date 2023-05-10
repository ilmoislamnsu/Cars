//
//  ContentView.swift
//  Cars
//
//  Created by Shafiqul  Islam on 5/10/23.
//

import SwiftUI

struct Car_List_View: View {
    
    @ObservedObject var model = CarModel()
    
    var body: some View {
        NavigationView{
            List(model.cars){ r in
                NavigationLink {
                    Car_Detail_View(car: r)
                } label: {
                    HStack {
                        Image(r.Name)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5.0)
                        Text(r.Name.capitalized)
                    }
                }

                .navigationTitle("All Cars")
                
            }
        }
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Car_List_View()
    }
}
