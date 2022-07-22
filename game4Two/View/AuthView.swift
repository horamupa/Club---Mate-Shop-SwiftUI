//
//  ContentView.swift
//  game4Two
//
//  Created by MM on 18.07.2022.
//

import SwiftUI

struct AuthView: View {
    
    @State private var isAuth = true
    @State private var email = ""
    @State private var password = ""
    @State private var passwordRep = ""
    @State private var isMainTabBarShow = false
    
    var body: some View {
        VStack(spacing: 15) {
            Text(isAuth ? "Mate-mate" : "Account creation")
                .padding(isAuth ? 16 : 22)
                .padding(.horizontal, 30)
                .background(Color("whiteAlpha"))
                .cornerRadius(isAuth ? 25 : 55)
                .font(.title2.bold())
            
            
            VStack(spacing: 15) {
                TextField("Enter e-mail", text: $email)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(.horizontal, 40)
                    .foregroundColor(.black)
                SecureField("Enter password", text: $password)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .padding(.horizontal, 40)
                    .foregroundColor(.black)
                if !isAuth {
                    SecureField("Repeat password", text: $passwordRep)
                        .padding()
                        .background(Color("whiteAlpha"))
                        .cornerRadius(12)
                        .padding(.horizontal, 40)
                        .foregroundColor(.black)
                }
                
                Button {
                    if isAuth {
                        print("button pressed")
                        isMainTabBarShow.toggle()
                    }
                    else {
                        print("registration")
                        self.password = ""
                        self.email = ""
                        self.passwordRep = ""
                        isAuth.toggle()
                    }
                } label: {
                    Text(isAuth ? "Enter" : "Create account")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(LinearGradient(colors: [.yellow, .orange], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .font(.title3.bold())
                        .padding(.horizontal, 40)
                        .foregroundColor(.black)
                }
                
                Button {
                    isAuth.toggle()
                    print("Register pressed")
                } label: {
                    Text(isAuth ? "Register me" : "Already have one")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .font(.title3.bold())
                        .padding(.horizontal, 40)
                        .foregroundColor(.orange)
                }
            }
            .padding(.top, 35)
            .background(Color("whiteAlpha"))
            .cornerRadius(25)
            .padding(isAuth ? 30 : 12)
            
            
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .background(Image("clubMate")
//            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
            .blur(radius: isAuth ? 0 : 6))
        .background(Image("clubMate")
                    
            .resizable()
            .ignoresSafeArea()
            .blur(radius: 3)
            .aspectRatio(contentMode: .fill))
        
        .background(.black)
        .animation(Animation.easeInOut, value: isAuth)
        .fullScreenCover(isPresented: $isMainTabBarShow) {
            MainTabBar()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
