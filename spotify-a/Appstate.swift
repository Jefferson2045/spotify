//
//  Appstate.swift
//  spotify-a
//
//  Created by Alumno on 2/06/23.
//

import Foundation

class Appstate: ObservableObject {
    
    static let shared: Appstate = Appstate()
    
    enum AppScreens{
        
        case launch
        case signIn
        case main
        case episode
    }
    
    @Published var currentScreen: AppScreens = .launch
    
    
}
