//
//  FriendsScreenModel.swift
//  Friends
//
//  Created by Abe Hunt on 7/16/25.
//

import Foundation

struct UserProfilePlaceholder: Identifiable {
    let id = UUID()
    let user: UserInFriendsModule
}

@MainActor
public final class FriendsScreenModel: ObservableObject {
    @Published var profile: UserProfilePlaceholder?
    
    let friends: [UserInFriendsModule]
    
    init(friends: [UserInFriendsModule]) {
        self.friends = friends
    }
    
    func didTap(user: UserInFriendsModule) {
        profile = .init(user: user)
    }

    public static func makeDefault() -> FriendsScreenModel {
        .init(friends: [.bob, .jim, .frank])
    }
}
