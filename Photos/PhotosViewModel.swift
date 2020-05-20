//
//  PhotosViewModel.swift
//  SwiftUI-Practices
//
//  Created by venkata sudhakar on 19/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import Foundation
import Combine

struct ApiConstants {
    static let url = URL.init(string: "https://jsonplaceholder.typicode.com/photos")
}

struct Photo:Codable,Identifiable,Hashable {
    let id:Int
    let title:String
    let url:String
    let thumbnailUrl:String
}
class PhotosViewModel:ObservableObject {
    @Published var photos = [Photo]()
    func getPhotos(){
        URLSession.shared.dataTask(with: ApiConstants.url!) { (data, response, error) in
            DispatchQueue.main.async {
            if error == nil {
                do{
                    guard let data = data else { return  }
                    self.photos = try JSONDecoder().decode([Photo].self, from: data)
                }catch{
                    print(error.localizedDescription)
                }
            }
            else{
                print(error?.localizedDescription ?? "")
            }
          }
        }.resume()
    }
}

class RemoteImage:ObservableObject {
    @Published var data = Data()

    init(imageUrl:String) {
        guard let url = URL(string: imageUrl) else { return  }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data  = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}

