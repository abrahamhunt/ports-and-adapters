//
//  UserProfileAdapters.swift
//  PortsAndAdaptersPresentation
//
//  Created by Abe Hunt on 7/17/25.
//

import UserProfile
import UIInterface
import User

typealias UserProfileScreenModel = UserProfile.UserProfileScreenModel<UserProfileAdapters>

final class UserProfileAdapters: UserProfilePorts {
    func friendsModel(user: User) -> some ViewMaker {
        FriendsScreenModel(adapters: .init(), friends: user.friends)
    }
}

extension User: @retroactive UserInProfileModule {}
