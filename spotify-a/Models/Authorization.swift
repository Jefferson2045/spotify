//
//  Authorization.swift
//  spotify-a
//
//  Created by Alumno on 30/06/23.
//

import Foundation

struct Authorization: Decodable{
    
    let access_token: String
    let token_type: String
    let expires_in: Int
    
}
