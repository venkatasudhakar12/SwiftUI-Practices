//
//  SliderView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 16/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State var currentValue = 4.0
    var body: some View {
        VStack {
            HStack {
                // sun min image
                Image(systemName: "sun.min")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.orange)
                //Slider
                Slider(value: $currentValue, in: 0.0...10.0)
                //5. Modify the Slider's color
                .accentColor(.orange)
                .padding()
             // sun max image
                Image(systemName: "sun.max")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundColor(.orange)
            }
        .padding()
            Text("Current value: \(currentValue)")
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
