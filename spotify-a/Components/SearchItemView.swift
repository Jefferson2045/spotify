//
//  SearchItemView.swift
//  spotify-a
//
//  Created by Alumno on 7/07/23.
//

import SwiftUI

struct SearchItemView: View {
    
    var image: String = ""
    var song: String = ""
    var artist: String = ""
    var width: CGFloat = 48
    var height: CGFloat = 48
    
    var body: some View {
        HStack{
            
            VStack{
                
                AsyncImage(url: URL(string: image)) {
                    
                    img in img.resizable()
                    
                } placeholder: {
                    
                    ProgressView()
                    
                }
                .frame(width: width, height: height)
                
            }
            .frame(width: 48, height: 48)
            
            VStack(alignment: .leading){
                
                Text(song)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .light))
                
                Text(artist)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .light))
                
            }
            .frame(width: 239, height: 38)
            
            VStack{
                
                Image("close")
                
            }
            .frame(width: 48, height: 48)
            
        }
    }
}

struct SearchItemView_Previews: PreviewProvider {
    static var previews: some View {
        SearchItemView()
    }
}
