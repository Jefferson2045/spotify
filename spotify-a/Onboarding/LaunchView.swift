//
//  LaunchView.swift
//  spotify-a
//
//  Created by Alumno on 2/06/23.
//

import SwiftUI

struct LaunchView: View {
    
    @StateObject var launchViewModel = LauchViewModel()
    
    var body: some View {
        ZStack{
            
            Color("dark")
                .ignoresSafeArea()
            Image("logo")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 26)
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
