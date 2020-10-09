//
//  ContentView.swift
//  Movie App
//
//  Created by MD Tanvir Alam on 23/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var moviesVM = MoviesViewModel()
    
    var body: some View {
        MovieList(movies: moviesVM.movies)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
