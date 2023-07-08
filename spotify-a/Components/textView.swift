//
//  textView.swift
//  spotify-a
//
//  Created by Alumno on 2/06/23.
//

import SwiftUI

struct textView: View {
    
    var text: String = ""
    var color: Color = .white
    var size: Float = 24
    var weight: Font.Weight = .bold
    var width: CGFloat = .infinity
    
    var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(.system(size: CGFloat(size), weight: weight))
            .frame(width: width, alignment: .leading)
            .lineLimit(3)
    }
}

struct textView_Previews: PreviewProvider {
    static var previews: some View {
        textView()
    }
}
