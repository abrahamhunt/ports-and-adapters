//
//  UserProfileScreen.swift
//  UserProfile
//
//  Created by Abe Hunt on 7/16/25.
//

import SwiftUI

private struct UserProfileScreen: View {
    @ObservedObject var viewModel: UserProfileScreenModel
    
    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: viewModel.user.photoURL)
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                
                VStack {
                    Text(viewModel.user.name)
                    Text(viewModel.user.handle)
                }
            }
            Button {
                viewModel.didTapFriends()
            } label: {
                Text("Friends")
                    .padding(16)
                    .background(.green)
                    .clipShape(.capsule)
            }
        }
        .sheet(item: $viewModel.friendsModel, content: {
            Text($0.friends.map { $0.name }.joined(separator: ","))
        })
    }
}

public extension UserProfileScreenModel {
    func makeView() -> some View {
        UserProfileScreen(viewModel: self)
    }
}
