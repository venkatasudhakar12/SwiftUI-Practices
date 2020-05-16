//
//  CharactersCountView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 15/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct CharactersCountView: View {
    var name:String = "sudhakar"
    @ObservedObject var textFieldManager = TextFieldManager()
    var body: some View {
        VStack{
        TextField("Enter some text", text: $textFieldManager.userInput)
        .cornerRadius(5.0)
        .frame(height: 40.0)
        .background(Color.gray)
            
        Text("hello:\(name)")
            
        Spacer()
        }
        .padding()
    }
}

struct CharactersCountView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersCountView()
    }
}
