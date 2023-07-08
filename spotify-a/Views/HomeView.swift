//
//  HomeView.swift
//  spotify-a
//
//  Created by Linder Anderson Hassinger Solano    on 26/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color("dark")
                .ignoresSafeArea()
            ScrollView {
                
                VStack(spacing: 30) {
                    
                    HStack(spacing: 20) {
                        textView(text: "Good Morning")
                        Spacer()
                        IconImageView(icon: "bell")
                        IconImageView(icon: "clock")
                        IconImageView(icon: "gear")
                    }
                    
                    textView(text: "Recently played")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            AlbumItemView(image: "Liked", text: "Liked Songs")
                            AlbumItemView(image: "Img", text: "Dangerous")
                            AlbumItemView(image: "Img-2", text: "For you")
                        }
                    }
                    
                    textView(text: "To get you started")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        
                        if homeViewModel.albums?.albums != nil {
                            
                            HStack(spacing: 20){
                                
                                ForEach(homeViewModel.albums!.albums, id: \.id)
                                
                                {
                                    
                                    album in RowItemView(
                                        
                                        image: album.images[0].url,
                                        text: album.name
                                        
                                    )
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
            }.padding()
        }.onAppear{
            
            Task {
                
                homeViewModel.albums = await RequestAPI.getAlbums()
                
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
