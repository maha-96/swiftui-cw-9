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
            
            
            
            List(movies){ movie in
                NavigationLink(
                    
                    destination: moviedetailview(movie: movie),
                    label: {
                        movielist(movie: movie)
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
    let movie: Movie
    var body: some View {
        
        HStack(alignment: .center){
            Image(movie.name)
                .resizable()
                // .scaledToFit()
                .frame(width: 90, height: 90)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading){
                Text(movie.name)
                    .font(.largeTitle)
                Text(movie.characters.joined(separator: ","))
            }
            
            
            
            
            
        }
    }
}



