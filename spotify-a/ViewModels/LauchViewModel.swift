//
//  LauchViewModel.swift
//  spotify-a
//
//  Created by Alumno on 2/06/23.
//

import Foundation
import FirebaseAuth

class LauchViewModel: ObservableObject{
    
    var appState: Appstate = .shared
    
    init() {
        
        
        Task{
            
            await RequestAPI.getToken()
            
        }
        
        appState.currentScreen = .main
        
    }
    
}
