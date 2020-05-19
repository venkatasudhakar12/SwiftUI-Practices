//
//  DrawingView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 16/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct DrawingView: View {
    var body: some View {
       Button(action:actionForButton) {
                  CustomButton()
              }
       
    }
    
    
    func actionForButton(){
        
    }
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
       DrawingView()
    }
    
}
struct CustomButton:View{
    var body: some View {
        VStack{

        HStack {
            Text("ADD TO CART")
                .font(.custom("Avenir-Medium", size: 20))
                .foregroundColor(.black)
                
            Image(systemName: "cart")
                .foregroundColor(.black)
            
        }
        .frame(minWidth: 0, idealWidth: 300, maxWidth: .infinity, minHeight: 30, idealHeight: 30, maxHeight: 40, alignment: .center)
    .padding()
    .background(Color.green)
    .cornerRadius(10.0)
            
    HStack{
          Text("Welcome")
    }
    Spacer()
   
    }
     .padding()
     .frame(maxWidth: .infinity, alignment: .leading)
    .background(Color.purple)
    .edgesIgnoringSafeArea(.all)
    }
}
