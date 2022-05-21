//
//  ContentView.swift
//  GoGoPizza(test)
//
//  Created by Nurqalam on 20.05.2022.
//

import SwiftUI

struct AuthView: View {
    
    @State private var isAuth = true
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    @State private var isTabViewShow = false
    
    var body: some View {
        
        VStack(spacing: 50) {
            Text(isAuth ? "Авторизация" : "Регистрация")
                .padding(isAuth ? 16 : 24)
                .padding(.horizontal, 30)
                .font(.title2.bold())
                .background(Color("whiteAlpha"))
                .cornerRadius(isAuth ? 30 : 60)
                .foregroundColor(Color("darkBrown"))
            
            VStack {
                TextField("Введите Email", text: $email)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .disableAutocorrection(true)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("whiteAlpha"))
                    .cornerRadius(12)
                    .textContentType(.oneTimeCode)
                    .disableAutocorrection(true)
                    .padding(8)
                    .padding(.horizontal, 12)
                
                if !isAuth {
                    SecureField("Повторите пароль", text: $password)
                        .padding()
                        .background(Color("whiteAlpha"))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                }
                
                Button {
                    if isAuth {
                        print("Авторизация пользователя через Firebase ")
                        isTabViewShow.toggle()
                    } else {
                        print("Регистрация пользователя")
                        self.email = ""
                        self.password = ""
                        self.confirmPassword = ""
                        self.isAuth.toggle()
                    }
                    
                } label: {
                    Text(isAuth ? "Войти" : "Создать аккаунт")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(colors: [Color("yellow"), Color("orange")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkBrown"))
                }
                
                Button {
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Еще не с нами?" : "Уже есть аккаунт!")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(12)
                        .padding(8)
                        .padding(.horizontal, 12)
                        .font(.title3.bold())
                        .foregroundColor(Color("darkBrown"))
                }

            }
            .padding()
            .padding(.top, 16)
            .background(Color("whiteAlpha"))
            .cornerRadius(24)
            .padding(isAuth ? 30 : 12)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("pizza3")
                .offset(y: -100)
                .padding(.bottom, 15)
                .ignoresSafeArea()
                .blur(radius: isAuth ? 0 : 5))
            .animation(Animation.easeInOut(duration: 0.3), value: isAuth)
            .fullScreenCover(isPresented: $isTabViewShow) {
                MainTabBar()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
