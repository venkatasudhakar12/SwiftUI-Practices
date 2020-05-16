//
//  TabBarView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 16/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            Text("HomeView")
                .tabItem {
                Image(systemName: "house")
                Text("Home")
            }
        Text("SettingView")
        .tabItem{
            Image(systemName: "gear")
            Text("setting")
        }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
