//
//  UserProfileInterface.swift
//  UserProfile
//
//  Created by Abe Hunt on 7/17/25.
//

import UIInterface
import Foundation

@MainActor
public protocol UserProfilePorts: AnyObject {
    associatedtype User: UserInProfileModule
    associatedtype FriendsModel: ViewMaker
    
    func friendsModel(user: User) -> FriendsModel
}


public protocol UserInProfileModule: Identifiable, Sendable {
    var name: String { get }
    var photoURL: URL? { get }
    var handle: String { get }
}
