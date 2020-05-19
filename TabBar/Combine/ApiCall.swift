//
//  ApiCall.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 17/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import Foundation
//import Combine
//import SwiftUI

class ApiCall:ObservableObject {
    @Published var result:Int = 0
    func sum(a:Int,b:Int){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+5) {
            self.result = a + b
        }
    }
}
