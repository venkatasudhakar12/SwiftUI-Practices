//
//  PhotosListView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 19/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct PhotosListView: View {
    @ObservedObject var vm = PhotosViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(vm.photos, id: \.self) { photo in
                    NavigationLink(destination: PhotosDetailView(photo: photo)) {
                       PhotoRowView(photo: photo)
                    }
                }
            
            }
        .navigationBarTitle("Photos")
        }.onAppear(perform: vm.getPhotos)
    }
}

struct PhotosListView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosListView()
    }
}
