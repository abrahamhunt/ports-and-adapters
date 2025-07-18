//
//  FriendsScreenModel.swift
//  Friends
//
//  Created by Abe Hunt on 7/16/25.
//

import Foundation
import SwiftUI

@MainActor
public final class FriendsScreenModel<Adapters: FriendsPorts>: ObservableObject {
    @Published var profile: Adapters.UserProfileModel?
    
    let friends: [Adapters.User]
    let adapters: Adapters
    
    public init(adapters: Adapters, friends: [Adapters.User]) {
        self.adapters = adapters
        self.friends = friends
    }
    
    func didTap(user: Adapters.User) {
        profile = adapters.makeProfile(user: user)
    }
}
