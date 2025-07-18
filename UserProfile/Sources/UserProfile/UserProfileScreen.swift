//
//  UserProfileScreen.swift
//  UserProfile
//
//  Created by Abe Hunt on 7/16/25.
//

import SwiftUI

private extension UserProfileScreenModel {
    private struct UserProfileScreen: View {
        @ObservedObject var viewModel: UserProfileScreenModel
        
        var body: some View {
            VStack {
                Text("User Profile Screen")
                
                HStack {
                    AsyncImage(url: viewModel.user.photoURL)
                        .frame(width: 40, height: 40)
                        .clipShape(.circle)
                    
                    VStack {
                        Text(viewModel.user.name)
                        Text(viewModel.user.handle)
                    }
                }
                viewModel.adapters.friendsButton(user: viewModel.user, action: {
                    viewModel.didTapFriends()
                })
            }
            .sheet(item: $viewModel.friendsModel) {
                $0.makeView()
            }
        }
    }
}

public extension UserProfileScreenModel {
    func makeView() -> some View {
        UserProfileScreen(viewModel: self)
    }
}
