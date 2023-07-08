//
//  SignInView.swift
//  spotify-a
//
//  Created by Alumno on 9/06/23.
//

import SwiftUI

struct SignInView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    @StateObject var signInViewModel : SignViewModel = SignViewModel()

    var body: some View {
        ZStack {
            Color("dark").ignoresSafeArea()
            VStack(alignment: .center, spacing: 10) {
                Spacer()
                Image("Spotiy_Logo_3")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.bottom, 5)
                
                textView(text: "Millions of songs.")
                textView(text: "Free on Spotify")
                    
                    VStack(spacing: 20) {
                        
                        TextFieldView(value: $email, placeHolder: "Email", keyBoardType: .emailAddress)
                        TextFieldView(value: $password, placeHolder: "Password", isSecure: true)
                        
                        Button {
                            
                            signInViewModel.signUp(email: email, password: password)
                            
                        } label: {
                            
                            Text("Log In")
                                .foregroundColor(Color("dark"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("primary"))
                                .font(.system(size: 16, weight: .semibold))
                                .cornerRadius(22)
                            
                        }
                            
                        
                    }.padding(.top)
            }.padding()
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

