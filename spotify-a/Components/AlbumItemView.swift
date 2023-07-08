//
//  AlbumItemView.swift
//  spotify-a
//
//  Created by Alumno on 2/06/23.
//

import SwiftUI

struct AlbumItemView: View {
    
    var align: HorizontalAlignment = .leading
    var spacing: CGFloat = 15
    var image: String = "mix1"
    var text: String = ""
    var width: CGFloat = 114
    var height: CGFloat = 114
    var size: CGFloat = 12
    var color: Color = .white
    
    var body: some View {
        VStack(alignment: align, spacing: spacing){
            Image(image)
                .resizable()
                .frame(width: width, height: height)
            textView(text: text, color: color, size: Float(size), width: width)
        }
    }
}

struct AlbumItemView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumItemView()
    }
}
