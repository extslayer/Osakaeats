//
//  DetailView.swift
//  Osakaeats
//
//  Created by Manmohan Shrivastava on 03/10/24.
//

import SwiftUI

struct DetailView: View {
    
    var det_img_name: String
    var det_name: String
    var det_price: String
    var det_desc: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ut facilisis lorem. Integer id convallis enim. Nulla facilisi. Aliquam pulvinar blandit mi, sit amet hendrerit lorem. Nam ac odio eu orci condimentum viverra. Quisque eget aliquet metus. Donec accumsan sem dolor, sed lacinia mauris ultricies a."
    
  
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 30.0){
                
                Image(det_img_name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                    .cornerRadius(30)
                
                
                HStack{
                    
                    Spacer()
                    
                    Text(det_name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                        .frame(width: 170.0)
                    
                  
                    
                    Text(det_price)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        
                    
                    Spacer()
                    
                }
                    
                
                
                
                Text(det_desc)
                    .padding(.all)
                    .background(Rectangle().fill(Color.gray.opacity(0.3)).cornerRadius(20))
                    .padding(.all)
                
                
            }
        }
       
    }
}

#Preview {
    DetailView(det_img_name: "onigiri", det_name: "onigiri", det_price: "4.99")
}
