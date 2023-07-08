//
//  RequestAPI.swift
//  spotify-c
//
//  Created by Alumno on 31/06/23.
//

import Foundation

class RequestAPI {
    
    static let endpoint: String = "https://lab14-spotify-api.vercel.app/api/spotify"
    static let endpointAlbums: String = "https://api.spotify.com/v1/albums?ids=382ObEPsp2rxGrnsizN5TX%2C1A2GTWGtFfWp7KSQTwWOyo%2C2noRn2Aes5aoNVsU6iWThc"
    
    
    static func setSearch(text: String) -> String {
        return "https://api.spotify.com/v1/search?q=\(text)&type=album"
    }
    
    static let endpointSearch: String = "https://api.spotify.com/v1/search?q=remaster%2520track%3ADoxy%2520artist%3AMiles%2520Davis&type=track%2Cplaylist%2Cshow%2Calbum"
    
    static func getToken() async {
        
        guard let url = URL(string: endpoint) else { return }

        do {
            
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let authorization = try? JSONDecoder().decode(Authorization.self, from: data) {
                
                let user = UserDefaults.standard
                user.set(authorization.access_token, forKey: "access_token")
                
            }
            
        }catch let error {
            
            print(error.localizedDescription)
            
        }
        
    }
    
    static func getAlbums() async -> Albums?{
        
        guard let url = URL(string: endpointAlbums) else { return nil }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer " + (UserDefaults.standard.string(forKey: "access_token") ?? ""), forHTTPHeaderField: "Authorization")
        
        do {
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            print(data)
            
            if let albums = try? JSONDecoder().decode(Albums.self, from: data) {
                return albums
                
            }
            
        }catch let error {
            
            print("Error")
            print(error.localizedDescription)
            
        }
        
        return nil
        
    }
    
    static func getSearches(text: String) async -> Searches?{
        let test = setSearch(text: text)
        guard let url = URL(string: test) else { return nil }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Bearer " + (UserDefaults.standard.string(forKey: "access_token") ?? ""), forHTTPHeaderField: "Authorization")

        do {
            let (data, _) = try await URLSession.shared.data(for: request)
            if let searches = try? JSONDecoder().decode(Searches.self, from: data) {
                print(test)
                print(searches)
                return searches
            } else {
                print("error en el modelo")
            }

            
        }catch let error {
            
            print("Error")
            print(error.localizedDescription)
            
        }
        
        return nil
        
    }
    
}
