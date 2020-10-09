//
//  Webservice.swift
//  Movie App
//
//  Created by MD Tanvir Alam on 23/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import Foundation

class Webservice {
    func fetchMovies(completion: @escaping (Movies?)->()){
        guard let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=f2453621d89438b582002fa4ac60b498&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1" ) else{
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            guard let data = data, error == nil else{
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            do{
                let movies =  try JSONDecoder().decode(Movies.self, from: data)
                DispatchQueue.main.async {
                    //print(movies)
                    completion(movies)
                }
            }catch{
                print("The error is: \(error)")
            }
            
            
            
        }.resume()
    }
}
