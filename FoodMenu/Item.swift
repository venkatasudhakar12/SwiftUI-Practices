//
//  Item.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 12/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import Foundation

struct MenuItem:Codable,Equatable,Identifiable {
    var id: UUID
    var name:String
   
}
struct MenuSection:Codable,Equatable,Identifiable{
    var id: UUID
    var name:String
    var items:[MenuItem]
}
