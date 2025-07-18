//
//  FriendsPorts.swift
//  Friends
//
//  Created by Abe Hunt on 7/17/25.
//

import Foundation
import UIInterface

@MainActor
public protocol FriendsPorts: AnyObject {
    associatedtype User: UserInFriendsModule
    associatedtype UserProfileModel: ViewMaker
    
    func makeProfile(user: User) -> UserProfileModel
}

public protocol UserInFriendsModule: Identifiable, Sendable {
    var name: String { get }
    var photoURL: URL? { get }
    var handle: String { get }
    var friends: [Self] { get }
}
