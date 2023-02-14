//
//  Tv.swift
//  netflix clone
//
//  Created by MD. SHAYANUL HAQ SADI on 26/1/23.
//

import Foundation



struct TrendingTvsResponse: Codable {
    let results: [Tv]
}


struct Tv: Codable {
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
"backdrop_path" = "/mNHRGO1gFpR2CYZdANe72kcKq7G.jpg";
"first_air_date" = "2022-11-13";
"genre_ids" =             (
 80,
 18
);
id = 153312;
"media_type" = tv;
name = "Tulsa King";
"origin_country" =             (
 US
);
"original_language" = en;
"original_name" = "Tulsa King";
overview = "Just after he is released from prison after 25 years, New York mafia capo Dwight \U201cThe General\U201d Manfredi is unceremoniously exiled by his boss to set up shop in Tulsa, Okla. Realizing that his mob family may not have his best interests in mind, Dwight slowly builds a \U201ccrew\U201d from a group of unlikely characters, to help him establish a new criminal empire in a place that to him might as well be another planet.";
popularity = "1495.468";
"poster_path" = "/fwTv3RPRAIy0maOMns5eYRRwnDk.jpg";
"vote_average" = "8.569000000000001";
"vote_count" = 654;
}
 */
