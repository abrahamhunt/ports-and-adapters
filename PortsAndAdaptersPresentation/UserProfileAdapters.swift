//
//  UserProfileAdapters.swift
//  PortsAndAdaptersPresentation
//
//  Created by Abe Hunt on 7/17/25.
//

import SwiftUI
import UserProfile
import UIInterface
import User

typealias UserProfileScreenModel = UserProfile.UserProfileScreenModel<UserProfileAdapters>

final class UserProfileAdapters: UserProfilePorts {
    func friendsModel(user: User) -> some ViewMaker {
        FriendsScreenModel(adapters: .init(), friends: user.friends)
    }
    
    @ViewBuilder
    func friendsButton(user: User, action: @escaping () -> Void) -> some View {
        if user.friends.isEmpty {
            EmptyView()
        } else {
            PortsAndAdaptersPresentation.FriendsButton(action: action) // Could have named the associatedType differently to avoid this need to specify
        }
    }
}

extension User: @retroactive UserInProfileModule {}
