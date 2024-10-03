//
//  ContentView.swift
//  Osakaeats
//
//  Created by Manmohan Shrivastava on 03/10/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataservice = DataService()
    
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading){
                Text("Shushi Menu")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.all)
                
                List(menuItems){ item in
                    
                    NavigationLink(destination: DetailView(det_img_name: item.imageName, det_name: item.name, det_price: item.getprice()), label: {
                        ListView(item: item)
                        
                    })
                    
                    
                    
                }.listStyle(.inset)
                    .onAppear {
                        menuItems = dataservice.getData()
                    }
            }
            
        }
        
        
    }
}

#Preview {
    MenuView()
}
