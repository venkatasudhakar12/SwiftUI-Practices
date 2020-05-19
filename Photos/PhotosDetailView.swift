//
//  PhotosDetailView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 19/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct PhotosDetailView: View {
    let photo:Photo
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                 Text(photo.title)
                ImageViewContainer(imageUrl: photo.url)
                Spacer()
            }.padding()
        }
    .navigationBarTitle("Photo details")
    }
}

struct PhotosDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosDetailView(photo: Photo(id: 1, title: "Sudhakar", url: "", thumbnailUrl: ""))
    }
}

struct ImageViewContainer: View {
    @ObservedObject var remoteImageURL: RemoteImage

    init(imageUrl: String) {
        remoteImageURL = RemoteImage(imageUrl: imageUrl)
    }

    var body: some View {
        Image(uiImage: UIImage(data: remoteImageURL.data) ?? UIImage())
            .resizable()
            .frame(width: 200.0, height: 200.0)
            .aspectRatio(contentMode: .fit)
    }
}
