//
//  SwiftUIpractice.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 17/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct SwiftUIpractice: View {
    
    @State var userName:String = ""
    @State var password:String = ""
    @State var selected : String = ""
    let  values = ["one","two","three"]
    @ObservedObject var op = ApiCall()
    var body: some View {
       
        VStack{
            InputTextField(placeHolder: "username", isSecuredField: false, stateBinding: $userName)
            InputTextField(placeHolder: "password", isSecuredField: true,stateBinding: $password)
            
            Button(action: {
                print("username: \(self.userName) password: \(self.password)")
            }) {
                Text("Login")
            }
            Button(action: {
                self.op.sum(a: 10, b: 20)
            }) {
                Text("sum : \(op.result)")
            }
            Picker("Options", selection: $selected) {
                ForEach(0 ..< values.count) { index in
                    Text(self.values[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle() )
        }
    }
}

struct SwiftUIpractice_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIpractice()
    }
}

struct InputTextField:View {
    let placeHolder:String
    let isSecuredField:Bool
    @Binding var stateBinding:String
    
    var body: some View {
        VStack{
        if isSecuredField {
           SecureField(placeHolder, text: $stateBinding)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }else{
            TextField(placeHolder, text: $stateBinding)
            .textFieldStyle(RoundedBorderTextFieldStyle())

        }
        }
    }
}


