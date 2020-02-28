//
//  ContentView.swift
//  InstagramFeed
//
//  Created by Stephen Dowless on 2/27/20.
//  Copyright © 2020 Stephan Dowless. All rights reserved.
//

import SwiftUI
import ASCollectionView

struct ContentView: View {
    @ObservedObject var viewModel = PostViewModel()
    
    var postSections: ASTableViewSection<Int> {
        ASTableViewSection(id: 0, data: viewModel.posts) { post, _ in
            PostCell(post: post)
        }
    }
    
    var body: some View {
        NavigationView {
            ASTableView(section: postSections)
            .tableViewSeparatorsEnabled(false)
            .navigationBarTitle("Feed")
        }
    }
}
