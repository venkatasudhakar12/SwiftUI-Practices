//
//  TextFieldManager.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 15/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import Foundation

class TextFieldManager : ObservableObject {
    let characterCount = 5
    @Published var userInput = "" {
        didSet {
            print(userInput)
            if userInput.count > characterCount {
                userInput = String(userInput.prefix(characterCount))
            }
        }
    }
}
