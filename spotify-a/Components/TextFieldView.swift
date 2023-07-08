//
//  TextFieldView.swift
//  spotify-a
//
//  Created by Alumno on 30/06/23.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var value: String
    var placeHolder: String = ""
    var isSecure: Bool = false
    var keyBoardType: UIKeyboardType = .default
    
    var body: some View {
        ZStack(alignment: .leading) {
            if value.isEmpty {
                Text(placeHolder)
                    .foregroundColor(.white.opacity(0.7))
            }
            if isSecure {
                SecureField("", text: $value)
                    .foregroundColor(.white)
            } else {
                TextField("", text: $value)
                    .foregroundColor(.white)
                    .keyboardType(keyBoardType)
            }
            
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.gray.opacity(0.5), lineWidth: 2)
        )
    }
}

