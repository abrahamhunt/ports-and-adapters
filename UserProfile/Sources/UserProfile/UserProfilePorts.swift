//
//  UserProfileInterface.swift
//  UserProfile
//
//  Created by Abe Hunt on 7/17/25.
//

import UIInterface
import Foundation
import SwiftUI

@MainActor
public protocol UserProfilePorts: AnyObject {
    associatedtype User: UserInProfileModule
    associatedtype FriendsModel: ViewMaker
    associatedtype FriendsButton: View
    
    func friendsButton(user: User, action: @escaping () -> Void) -> FriendsButton
    func friendsModel(user: User) -> FriendsModel
}


public protocol UserInProfileModule: Identifiable, Sendable {
    var name: String { get }
    var photoURL: URL? { get }
    var handle: String { get }
}
