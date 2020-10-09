//
//  MovieList.swift
//  Movie App
//
//  Created by MD Tanvir Alam on 25/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    var movies : [MovieViewModel]
    var body: some View {
        List{
            ForEach(movies, id: \.id){ movie in
                VStack(alignment: .center){
                    Text(movie.title)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                    Text("Popularity: \(movie.popularity)")
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                    Text(movie.overview)
                        .multilineTextAlignment(.leading)
                        .padding(.all)
                    Text("VoteAverage: \(movie.voteAverage)")
                        .padding(.all)
                    Text(movie.genreId)
                        .padding(.all)
                }
            }
            .padding(.all)
            .background(Color.gray)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 5)
            )
                .foregroundColor(Color.white)
                .font(.system(size:25))
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    //var moviesVM = MoviesViewModel()
    static var previews: some View {
        
        MovieList(movies: [MovieViewModel(movie: Movie(popularity: 7.8, genre_ids: [25], title: "Fight Club", vote_average: 3.4, overview: "Story of a psysofrenic dkfj jkdkfjk ksa;pe jjddj ianfd loner nf die ksjdie kieieo qoeierir iwie owoe fkfkfieir"))])
    }
}
