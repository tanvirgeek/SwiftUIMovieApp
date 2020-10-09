//
//  MoviesViewModel.swift
//  Movie App
//
//  Created by MD Tanvir Alam on 23/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class MoviesViewModel:ObservableObject{
    private var movieServices = Webservice()
    @Published var movies = [MovieViewModel]()
    
    init(){
        self.getMovies()
    }

    private func getMovies() {
        movieServices.fetchMovies { movies in
            if let movies = movies{
                movies.results.forEach{ movie in
                    self.movies.append(MovieViewModel.init(movie: movie))
                }
            }
        }
    }
}

class MovieViewModel{
    var id = UUID()
    var movie:Movie
    init(movie:Movie){
        self.movie = movie
    }
    var popularity:String {
        if let popularity = self.movie.popularity{
            return String(format:"%.2f", popularity)
        }
        return "No popularity"
    }
    
    var voteAverage: String{
        if let voteaverage = self.movie.vote_average{
            return String(format:"%.2f", voteaverage)
        }
        return "No Vote Average"
    }
    var genreId:String{
        if let genreId = self.movie.genre_ids{
            return String(genreId[0])
        }
        return "No Genre ID"
    }
    var overview:String {
        if let overview = self.movie.overview{
            return overview
        }
        return "No Overview"
    }
    var title:String {
        if let title = self.movie.title{
            return title
        }
        return "No title"
    }
}
