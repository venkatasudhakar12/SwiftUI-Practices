//
//  DemoView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 16/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct DemoView: View {
    @State var flag = true
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
         Text("we are very good position")
            .font(.headline)
            
      
            Button(action: actionForButton) {
                Text("👍 click me!")
                    .foregroundColor(.white)
            }
        .padding()
            
        Image(systemName: "gear")
            .font(.largeTitle)
            .foregroundColor(.white)
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                }
            }
            
        }
        .padding()
        .accentColor(.red)
        .background(Color.purple)
        .edgesIgnoringSafeArea(.all)
    }
    
    
    func actionForButton()  {
        flag.toggle()
        if flag {
            
        }
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
