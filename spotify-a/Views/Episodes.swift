//
//  Episodes.swift
//  spotify-a
//
//  Created by Alumno on 16/06/23.
//

import SwiftUI

struct Episodes: View {
    var body: some View {
        ZStack{
            Color("dark")
                .ignoresSafeArea()
            
            ScrollView{
                
                VStack(alignment: .leading, spacing: 19){
                    
                    HStack(spacing: 16){
                        
                        Image("maha")
                        
                        VStack(alignment: .leading, spacing: 16){
                            
                            Text("Maha Bharat with Dhruv Rathee")
                                .foregroundColor(.white)
                                .font(.system(size: CGFloat(28), weight: .bold))
                            
                            Text("Spotify Studios")
                                .foregroundColor(.gray)
                                .font(.system(size: CGFloat(14), weight: .bold))
                            
                        }
                        
                    }
                    
                    HStack(spacing: 24){
                        
                        VStack{
                            
                            Button(action: {}){
                                
                                Text("Following")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(12), weight: .bold))
                                
                                
                                
                                
                            }
                            .frame(width: 79, height: 32)
                            .border(Color.white, width: 1.5)
                            .cornerRadius(5)
                            
                        }

                        Image("whats_new")
                        Image("settings")
                        Image("options")
                        
                    }
                    
                    Text("A Product Story is a podcast that explores the behind-the-scenes stories of how products are developed and brought to market at Spotify, ... see more")
                        .foregroundColor(.white)
                        .font(.system(size: CGFloat(10), weight: .light))
                        
                    HStack(spacing: 8){
                        
                        Button(action: {}){
                            
                            HStack(spacing: 3){
                                
                                Text("4.6")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(12), weight: .bold))
                                    
                                Image("star")
                                    .foregroundColor(.white)
                                Text("(5K)")
                                    .foregroundColor(Color("text_color"))
                                    .font(.system(size: CGFloat(12), weight: .bold))
                                
                            }
                            .frame(width: 94, height: 32)
                            
                                
                        }
                        .background(Color("grey_dark"))
                        .cornerRadius(30)
                        
                        Text("•")
                            .foregroundColor(.white)
                        
                        Button(action: {}){
                            
                            HStack(spacing: 3){
                                
                                Text("Philosophy")
                                    .foregroundColor(.white)
                                    .font(.system(size: CGFloat(12), weight: .bold))
                            
                                
                            }
                            .frame(width: 96, height: 32)
                                
                        }
                        .background(Color("grey_dark"))
                        .cornerRadius(30)
                        
                    }
                    
                    HStack(alignment: .firstTextBaseline ,spacing: 20){
                        
                        VStack(spacing: 4){
                            
                            Text("Episodes")
                                .foregroundColor(.white)
                                .font(.system(size: CGFloat(14), weight: .bold))
                            
                            Image("divider")
                                .resizable()
                                .frame(width: 65, height: 12)
                            
                        }
                        
                        
                        Text("More Like This")
                            .foregroundColor(.white)
                            .font(.system(size: CGFloat(14), weight: .bold))
                        
                    }
                    
                    HStack{
                        
                        Text("All episodes")
                            .foregroundColor(.white)
                            .font(.system(size: CGFloat(14), weight: .bold))
                            .frame(width: 280, alignment: .leading)
                        
                        Button(action: {}){
                            
                            Text("Sort")
                                .foregroundColor(Color("text_color"))
                                .font(.system(size: CGFloat(12), weight: .bold))
                                .frame(width: 57, height: 30)
                                
                            
                        }
                        .background(Color("grey_dark"))
                        .cornerRadius(4)
                        
                    }
                    
                    VStack(alignment: .leading ,spacing: 15){
                        
                        HStack(spacing: 14){
                            
                            Image("maha")
                                .resizable()
                                .frame(width: 48, height: 48)
                            
                            Text("How much should we depend on our Nuclear power p  lants?")
                                .foregroundColor(.white)
                                .font(.system(size: CGFloat(14), weight: .bold))
                            
                        }
                        
                        Text("This is where the Spotify product story begins. In this episode, we dive into the world that set the stage for Spotify and the streaming music revolution. ..")
                            .foregroundColor(.white)
                            .font(.system(size: CGFloat(10), weight: .light))
                        
                        HStack(spacing: 20){
                            
                            Image("add")
                            Image("download")
                            Image("share")
                            Image("menu")
                            Spacer()
                            Image("play")
                                .frame(alignment: .leadingLastTextBaseline)
                            
                        }
                        
                    }
                    
                }
                
            }.padding()
            
        }
    }
}

struct Episodes_Previews: PreviewProvider {
    static var previews: some View {
        Episodes()
    }
}
