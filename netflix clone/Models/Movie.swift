//
//  Movie.swift
//  netflix clone
//
//  Created by MD. SHAYANUL HAQ SADI on 25/1/23.
//

import Foundation


struct TrendingMoviesResponse: Codable {
    let results: [Movie]
}

struct UpcomingMoviesResponse: Codable {
    let results: [Movie]
}

struct PopularMoviesResponse: Codable {
    let results: [Movie]
}

struct TopRatedMoviesResponse: Codable {
    let results: [Movie]
}


struct Movie: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
    
    
    
}




/*
 {
adult = 0;
"backdrop_path" = "/a4I481szRmycyreQTLrRe4f4YJe.jpg";
"genre_ids" =             (
 18,
 53,
 80
);
id = 842544;
"media_type" = movie;
"original_language" = en;
"original_title" = Transfusion;
overview = "Ryan Logan, a former Special Forces operative, is battling to cope with life after the loss of his wife.  He is thrusted into the criminal underworld to keep his only son from being taken from him.";
popularity = "51.547";
"poster_path" = "/bxh5xCCW9Ynfg6EZJWUkc1zqTnr.jpg";
"release_date" = "2023-01-05";
title = Transfusion;
video = 0;
"vote_average" = "6.7";
"vote_count" = 15;
}
 */
 
