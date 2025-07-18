//
//  FriendsAdapters.swift
//  PortsAndAdaptersPresentation
//
//  Created by Abe Hunt on 7/17/25.
//

import Friends
import UIInterface
import User

typealias FriendsScreenModel = Friends.FriendsScreenModel<FriendsAdapters>
typealias FriendsButton = Friends.FriendsButton // Added so that UserAdapters.swift needn't import Friends

final class FriendsAdapters: FriendsPorts {
    func makeProfile(user: User) -> some ViewMaker {
        UserProfileScreenModel(adapters: .init(), user: user)
    }
}

extension User: @retroactive UserInFriendsModule {}
