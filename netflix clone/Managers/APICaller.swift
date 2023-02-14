//
//  APICaller.swift
//  netflix clone
//
//  Created by MD. SHAYANUL HAQ SADI on 25/1/23.
//

import Foundation

struct Constants {
    static let API_KEY = "697d439ac993538da4e3e60b54e762cd"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
    
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
                
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
//                print(results.results[3].original_title)
                
                completion(.success(results.results))
                
            }catch {
//                print(error.localizedDescription)
                completion(.failure(APIError.failedToGetData))
            }
            
        }
        task.resume()
        
    }
    
    
    
    func getTrendingTvs(completion: @escaping (Result<[Tv], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
                
                let results = try JSONDecoder().decode(TrendingTvsResponse.self, from: data)
                print(results)
                
//                completion(.success(results.results))
                
            }catch {
//                print(error.localizedDescription)
                completion(.failure(APIError.failedToGetData))
            }
            
        }
        task.resume()
        
    }
    
    

    func getUpcomingMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
                
                let results = try JSONDecoder().decode(UpcomingMoviesResponse.self, from: data)
                print(results)
                
//                completion(.success(results.results))
                
            }catch {
                print(error.localizedDescription)
//                completion(.failure(error))
            }
            
        }
        task.resume()
        
    }
    

    
    func getPopularMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
                
                let results = try JSONDecoder().decode(PopularMoviesResponse.self, from: data)
                print(results)
                
//                completion(.success(results.results))
                
            }catch {
                print(error.localizedDescription)
//                completion(.failure(error))
            }
            
        }
        task.resume()
        
    }
    
    
    
    func getTopRatedMovies(completion: @escaping (Result<[Movie], Error>) -> Void){
        
        guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
//                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                print(results)
                
                let results = try JSONDecoder().decode(TopRatedMoviesResponse.self, from: data)
                print(results)
                
//                completion(.success(results.results))
                
            }catch {
                print(error.localizedDescription)
//                completion(.failure(error))
            }
            
        }
        task.resume()
        
    }
    
}
