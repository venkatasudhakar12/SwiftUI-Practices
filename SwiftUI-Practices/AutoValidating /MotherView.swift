//
//  MotherView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 15/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct MotherView: View {
   @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentPage == "home" {
                Text("Home")
                HomeView()
            } else if viewRouter.currentPage == "pin" {
                AutoValidating()
            }
        }
    }

}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView()
    }
}
