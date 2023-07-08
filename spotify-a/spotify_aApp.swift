//
//  spotify_aApp.swift
//  spotify-a
//
//  Created by Linder Anderson Hassinger Solano    on 26/05/23.
//

import SwiftUI

@main
struct spotify_aApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var appState: Appstate = .shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen{
                
            case.launch:
                LaunchView()
                    .environmentObject(appState)
                
            case.signIn:
                MainView()
                    .environmentObject(appState)
            
            case.main:
                MainView()
                    .environmentObject(appState)
                
            case.episode:
                Episodes()
                    .environmentObject(appState)
                
            }
        }
    }
}
