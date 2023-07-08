//
//  SignViewModel.swift
//  spotify-a
//
//  Created by Alumno on 9/06/23.
//

import Foundation
import FirebaseAuth

class SignViewModel: ObservableObject{
    
    var appState: Appstate = .shared
    
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) {
            authResult, error in
            
            if error != nil {
                
                //TODO: Alerta que muestra el error
                return
            }
            self.appState.currentScreen = .main
        }
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) {
            authResult, error in
            
            if error != nil {
                
                //TODO: Alerta que muestra el error
                return
            }
            
            self.appState.currentScreen = .main
        }
        
    }
    
}
