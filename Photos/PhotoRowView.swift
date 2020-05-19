//
//  PhotoRowView.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 19/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct PhotoRowView: View {
    let photo:Photo
    
    var body: some View {
        HStack{
            ImageView(imageUrl: photo.thumbnailUrl)
            VStack(alignment: .leading) {
                Text("\(photo.id)")
                    .font(.headline)
                Text(photo.title)
                    .font(.subheadline)
            }
        }
    }
}

//struct PhotoRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        PhotoRowView(photo: <#Photo#>)
//    }
//}
struct ImageView : View {
    @ObservedObject var remoteImageURL: RemoteImage

    init(imageUrl: String) {
        remoteImageURL = RemoteImage(imageUrl: imageUrl)
    }

    var body: some View {
        Image(uiImage: (UIImage(data: remoteImageURL.data) ?? UIImage(systemName: "person.circle"))!)
            .resizable()
            .frame(width: 50, height: 50)
            .aspectRatio(contentMode: .fit)
    }
}
