//
//  UserProfileScreenModel.swift
//  UserProfile
//
//  Created by Abe Hunt on 7/16/25.
//

import Foundation
import UIInterface

@MainActor
public final class UserProfileScreenModel<Adapters: UserProfilePorts>: ObservableObject, ViewMaker {
    @Published var friendsModel: Adapters.FriendsModel?
    let user: Adapters.User
    let adapters: Adapters

    public init(adapters: Adapters, user: Adapters.User) {
        self.adapters = adapters
        self.user = user
    }
    
    func didTapFriends() {
        friendsModel = adapters.friendsModel(user: user)
    }
}
