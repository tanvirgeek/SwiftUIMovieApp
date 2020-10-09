//
//  Movie.swift
//  Movie App
//
//  Created by MD Tanvir Alam on 23/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import Foundation

struct Movies:Decodable {
    let results : [Movie]
}
struct Movie:Decodable {
    let popularity:Double?
    let genre_ids:[Int]?
    let title:String?
    let vote_average:Double?
    let overview:String?
}

