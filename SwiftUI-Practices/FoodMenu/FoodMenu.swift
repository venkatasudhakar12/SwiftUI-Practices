//
//  FoodMenu.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 12/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct FoodMenu: View {
    let menu = MenuViewModel().items
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
        }
    .navigationBarTitle("Food Menu")
    }
}

struct FoodMenu_Previews: PreviewProvider {
    static var previews: some View {
        FoodMenu()
    }
}
