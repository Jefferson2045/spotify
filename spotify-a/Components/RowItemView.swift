//
//  RowItemView.swift
//  spotify-a
//
//  Created by Alumno on 30/06/23.
//

import SwiftUI

struct RowItemView: View {
    var image: String = ""
    var align: HorizontalAlignment = .leading
    var width: CGFloat = 114
    var height: CGFloat = 114
    var text: String = ""
    var size: CGFloat = 12
    
    var body: some View {
        VStack(alignment: align) {
            AsyncImage(url: URL(string: image)) {
                
                img in img.resizable()
                
            } placeholder: {
                
                ProgressView()
                
            }
            .frame(width: width, height: height)
            
            textView(text: text, size: Float(size), width: width)
        }
    }
}

struct RowItemView_Previews: PreviewProvider {
    static var previews: some View {
        RowItemView()
    }
}
