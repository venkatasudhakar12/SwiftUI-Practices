//
//  LoginView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 13/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI
let lightGrayColor = Color(red: 239.0/250.0, green: 243.0/250.0, blue: 244.0/250.0, opacity: 1.0)

struct LoginView: View {
    @State var userName:String = ""
    @State var password:String = ""
    
    var body: some View {
        VStack{
            WelcomeText()
            LogoImage()
            TextField("UserName", text: $userName)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
            SecureField("Passwor", text: $password)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            
            Button(action: {
                print(self.userName)
                print(self.password)
            }) {
                LoginButtonContent()
            }
            
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct WelcomeText:View{
    var body: some View{
        Text("Welcome to SwiftUI")
            .font(.title)
            .fontWeight(.heavy)
            .padding(.bottom, 20)
    }
}
struct LogoImage:View{
    var body: some View{
       Image("logo")
        .resizable()
        .frame(width: 150, height: 150, alignment: .center)
        .cornerRadius(150.0)
        .clipped()
        .padding(.bottom, 30)
        .aspectRatio(contentMode: .fit)
    }
}

struct LoginButtonContent:View{
    var body: some View {
        Text("Login")
        .font(.headline)
        .padding()
        .foregroundColor(.white)
        .background(Color.green)
        .cornerRadius(15.0)
        .frame(width: 240, height: 60)
    }
    
}



