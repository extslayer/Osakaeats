//
//  MenuItem.swift
//  Osakaeats
//
//  Created by Manmohan Shrivastava on 03/10/24.
//

import Foundation

struct MenuItem: Identifiable{
    var id:UUID = UUID()
    var name: String
    var price: Double
    var imageName: String
    
    func getprice()->String{
        return "$"+String(price)
    }
     
}
