//
//  FriendsScreen.swift
//  Friends
//
//  Created by Abe Hunt on 7/16/25.
//

import SwiftUI
import UIInterface

extension FriendsScreenModel {
    private struct FriendsScreen: View {
        @ObservedObject var viewModel: FriendsScreenModel
        
        var body: some View {
            VStack {
                Text("Friends Screen")
                
                ForEach(viewModel.friends) { friend in
                    Button {
                        viewModel.didTap(user: friend)
                    } label: {
                        HStack {
                            AsyncImage(url: friend.photoURL)
                                .frame(width: 40, height: 40)
                                .clipShape(.circle)
                            
                            VStack {
                                Text(friend.name)
                                Text(friend.handle)
                            }
                        }
                    }
                }
            }
            .sheet(item: $viewModel.profile) { $0.makeView() }
        }
    }
}

extension FriendsScreenModel: ViewMaker {
    public func makeView() -> some View {
        FriendsScreen(viewModel: self)
    }
}
