//
//  Movie.swift
//  ex9
//
//  Created by bibi on 05/01/2021.
//

import Foundation
struct Movie: Identifiable {
    let name: String
    let characters: [String]
    
    let id = UUID()
    
}

let movies = [
    Movie(name: "Aladdin", characters: ["Aladdin","Jasmin","Genie"]),
    Movie(name: "Coco", characters: ["Mama Coco","Miguel","Mama Imelda"]),
    Movie(name: "Toy story", characters: ["Woody","BuzzLight Year","Jessie"])

]
