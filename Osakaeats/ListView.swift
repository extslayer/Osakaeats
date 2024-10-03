//
//  ListView.swift
//  Osakaeats
//
//  Created by Manmohan Shrivastava on 03/10/24.
//

import SwiftUI

struct ListView: View {
    var item: MenuItem
    var body: some View {
     
            
            HStack{
               
                    
                    Image(item.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60)
                        .cornerRadius(10)
                    
                    Text(item.name)
                        .font(.headline)
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    
                    Text(item.getprice())
                        .font(.body)
                        .foregroundColor(Color.black)
                    
                    

                    
                
                
            }.listRowSeparator(.hidden)
            
        
    
            
            
            
            
        
        
    }
}

#Preview {
    ListView(item: MenuItem(name: "Examople", price: 5.99, imageName: "onigiri"))
}
