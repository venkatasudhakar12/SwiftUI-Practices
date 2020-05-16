//
//  PickerView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 16/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    @State var selected = 0
    let colours = ["Green","Red","Pink","Yellow","Orange","White"]
    var body: some View {
        VStack{
            Picker(selection: $selected, label: Text("Colours")) {
                ForEach(0 ..< colours.count){ index in
                    Text(self.colours[index])
                }
            }
            Text("Selected Colour: \(colours[selected])")
                .padding(.bottom, 60)
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
