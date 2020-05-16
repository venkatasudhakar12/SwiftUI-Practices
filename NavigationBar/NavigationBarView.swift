//
//  NavigationBarView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 16/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct NavigationBarView: View {
    @State var items = [Item]()
    var body: some View {
        NavigationView{
            List(items) { item in
                Text(item.name)
            }
            .navigationBarTitle(Text("To Do"),displayMode: .inline)
            .navigationBarItems(trailing:
            HStack{
                Button(action: {
                    self.addTask()
                }) {
                    Image(systemName: "plus.circle")
                }
                Button(action: {self.removeTask()}) {
                    Image(systemName: "minus.circle")
                }
            })

        }
    }
    func addTask(){
        let task = Item(id: items.count+1, name: "Task \(items.count+1)")
        items.append(task)
    }
    func removeTask(){
        if !items.isEmpty{
            items.removeLast()
        }
        
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
struct Item:Identifiable {
    var id:Int
    var name:String
}
struct NavigationTitle:View {
    var body: some View {
        Text("ToDo")
            .font(.headline)
            .foregroundColor(.red)
    }
}
