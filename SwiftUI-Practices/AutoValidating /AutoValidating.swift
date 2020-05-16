//
//  AutoValidating .swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 15/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct AutoValidating: View {
    @State var text : String = ""
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color("TextFieldColor"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Text("Please enter your verification code")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.top, 70)
                    .padding(.bottom, 20)
                Text("We have sent you a four-digit PIN to verificate your phone number.")
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 20)
                SecureField("PIN", text: $viewRouter.enteredPin)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color("TextFieldColor"))
                    .cornerRadius(5.0)
                    .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                Spacer()
            }
                .padding(30)
        }
    }
}

struct AutoValidating__Previews: PreviewProvider {
    static var previews: some View {
        AutoValidating()
    }
}
