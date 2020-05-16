//
//  ViewRouter.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 15/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI
import Foundation
import AudioToolbox
let pin  = "1234"
class ViewRouter : ObservableObject {
   @Published var enteredPin = "" {
       didSet {
           if self.enteredPin == pin {
               self.currentPage = "home"
           } else if enteredPin.count >= 4 {
               enteredPin = ""
               AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate)) { return }
           }
       }
   }

   @Published var currentPage = "pin"
}
