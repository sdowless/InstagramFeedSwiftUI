//
//  PostViewModel.swift
//  InstagramFeed
//
//  Created by Stephen Dowless on 2/27/20.
//  Copyright © 2020 Stephan Dowless. All rights reserved.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        let post1 = Post(id: 0, username: "venom", caption: "Test Caption",
                         imageName: "venom-4", location: "Miami")
        
        let post2 = Post(id: 1, username: "venom", caption: "Test Caption 2",
        imageName: "venom-10", location: "Miami")
        
        posts.append(post1)
        posts.append(post2)
    }
}
