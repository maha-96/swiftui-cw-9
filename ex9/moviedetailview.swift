//
//  moviedetailview.swift
//  ex9
//
//  Created by bibi on 02/01/2021.
//

import SwiftUI

struct moviedetailview: View {
    let moviename: String
    let moviecharacters: [String]
    
    var body: some View {
        ZStack(){
            Group{
                Image(moviename)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 30)
                Color.black.opacity(0.3)
                    
            }
            .ignoresSafeArea()
            VStack(){
            
                Image(moviename)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .background(Color.blue)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 6))
                
                Text(moviename)
                    .font(.system(size: 50))
                    .bold()
                Text(moviecharacters.joined(separator: ","))
                    .font(.title2)
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.vertical)
            .shadow(radius: 10 )
            
            
        }
        
    }
}


struct moviedetailview_Previews: PreviewProvider {
    static var previews: some View {
        moviedetailview(moviename: "Aladdin", moviecharacters: ["Aladdin","Jasmin","Genie"])
    }
}
