//
//  Challenge1.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 20/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct Challenge1: View {
    @State private var credit = 1000
     private let symbols = ["logo","profile","user"]
    @State private var numbers = [0,1,2]
    var body: some View {
        ZStack{
            //background color
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            VStack {
                //title
                Spacer()
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("Swift UI ")
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                }.scaleEffect(2.5)
                //text label
                Spacer()
                Text("Credits : \(self.credit)")
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                // images
                Spacer()
                HStack{
                    Spacer()
                    Image(symbols[numbers[0]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[1]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(symbols[numbers[2]])
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Spacer()
                }
                Spacer()
                //                Button
                Button(action: {
                    self.credit += 1
                    self.numbers[0] = Int.random(in: 0..<self.symbols.count)
                    self.numbers[1] = Int.random(in: 0..<self.symbols.count)
                    self.numbers[2] = Int.random(in: 0..<self.symbols.count)
                    
                }) {
                    Text("Spin")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.all, 12)
                        .padding([.horizontal], 30)
                        .background(Color.pink)
                        .cornerRadius(20.0)
                }
                Spacer()
                
                
            }
        }
    }
}

struct Challenge1_Previews: PreviewProvider {
    static var previews: some View {
        Challenge1()
    }
}
