//
//  UserProfileScreenModel.swift
//  UserProfile
//
//  Created by Abe Hunt on 7/16/25.
//

import Foundation

struct FriendsPlaceholder: Identifiable, Sendable {
    let id = UUID()
    let friends: [UserInProfileModule]
    
    static let testData: Self = .init(friends: [.bob])
}

@MainActor
public final class UserProfileScreenModel: ObservableObject {
    @Published var friendsModel: FriendsPlaceholder?
    let user: UserInProfileModule

    init(user: UserInProfileModule) {
        self.user = user
    }
    
    func didTapFriends() {
        friendsModel = .init(friends: user.friends)
    }
    
    public static func makeDefault() -> UserProfileScreenModel {
        UserProfileScreenModel(user: .bob)
    }
}
