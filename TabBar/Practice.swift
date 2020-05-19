//
//  Practice.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 16/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Practice: View {
    @State var userName:String = ""
    @State var password:String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack{
                 Spacer()
            Image("logo")
                .resizable()
                .clipShape(Circle())
                .frame(width: 160, height: 160)
                .aspectRatio(CGSize(width: 300, height: 500),contentMode: .fit)
                //.clipped()
                Spacer()
            }
            TextField("username", text: $userName)
                
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.white)
            SecureField("password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .foregroundColor(.white)

            HStack{
                Spacer()
            Button(action: {
                print("\(self.userName) and \(self.password)")
            }) {
                 Text("LOGIN")
                    .font(.headline)
                    .foregroundColor(.white)
                }
                Spacer()
            }
            .padding(.vertical, 10)
            .background(Color.purple)
            .cornerRadius(5)
            .padding(.horizontal, 40)
         Spacer()
        }
        .padding(.horizontal, 20)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        Practice()
    }
}
