//
//  ContentView.swift
//  ex9
//
//  Created by bibi on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            
            
            
            List{
                NavigationLink(
                    
                    destination: moviedetailview(moviename: "Aladdin", moviecharacters: ["Aladdin","Jasmin","Genie"]),
                    label: {
                        movielist(moviename: "Aladdin", moviecharacters: ["Aladdin","Jasmin","Genie"])
                    })
                
                NavigationLink(
                    destination: moviedetailview(moviename: "Coco", moviecharacters: ["Mama Coco","Miguel","Mama Imelda"]),
                    label: {
                        movielist(moviename: "Coco", moviecharacters: ["Mama Coco","Miguel","Mama Imelda Rivera"])
                    })
                NavigationLink(
                    destination: moviedetailview(moviename: "Toy story", moviecharacters: ["Woody","BuzzLight Year","Jessie"]),
                    label: {
                        movielist(moviename: "Toy story", moviecharacters: ["Woody","BuzzLight Year","Jessie"])
                        
                    })
                    
                
            }
            
            .navigationBarTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct movielist: View {
    let moviename: String
    let moviecharacters: [String]
    var body: some View {
        
        HStack(alignment: .center){
            Image(moviename)
                .resizable()
                // .scaledToFit()
                .frame(width: 90, height: 90)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading){
                Text(moviename)
                    .font(.largeTitle)
                Text(moviecharacters.joined(separator: ","))
            }
            
            
            
            
            
        }
    }
}



