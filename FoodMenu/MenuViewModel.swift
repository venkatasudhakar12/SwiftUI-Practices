//
//  MenuViewModel.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 12/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import UIKit

class MenuViewModel: NSObject {
    var items = [MenuSection]()
    override init() {
        super.init()
        self.modelData()
    }
    func modelData(){
        let path = Bundle.main.url(forResource: "menu", withExtension: "json")!
        do {
            let data = try Data(contentsOf: path)
            do {
                items = try JSONDecoder().decode([MenuSection].self, from: data)
            }catch{
                print(error.localizedDescription)
            }
        }catch{
            print(error.localizedDescription)
        }
        
    }
}
