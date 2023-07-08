//
//  SearchView.swift
//  spotify-a
//
//  Created by Linder Anderson Hassinger Solano    on 26/05/23.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject var searchViewModel: SearchesViewModel = SearchesViewModel()
    
    var body: some View {
        ZStack {
            Color("dark")
                .ignoresSafeArea()
            ScrollView{
                SearchComponentView()
                HStack{
                    
                    Text("Recent searches")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .bold))
                        .frame(width: 350, alignment: .leading)
                }
                .padding(EdgeInsets(top: 32, leading: 0, bottom: 0, trailing: 16))
                

                
                HStack{
                    
                    Text("Clear recent searches")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .bold))
                        .frame(width:365, alignment: .leading)
                    
                }
                
            }.padding()
                
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
