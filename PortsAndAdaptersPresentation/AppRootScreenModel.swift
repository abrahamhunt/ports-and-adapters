//
//  AppRootScreenModel.swift
//  PortsAndAdaptersPresentation
//
//  Created by Abe Hunt on 7/17/25.
//

import Foundation
import UserProfile
import Friends

@MainActor
final class AppRootScreenModel: ObservableObject {
    enum Sheet: Identifiable {
        case userProfile(UserProfileScreenModel)
        case friends(FriendsScreenModel)
        
        var id: ObjectIdentifier {
            switch self {
            case let .friends(model): ObjectIdentifier(model)
            case let .userProfile(model): ObjectIdentifier(model)
            }
        }
    }
    
    @Published var sheet: Sheet?
    
    func didTapUserProfile() {
        sheet = .userProfile(.makeDefault())
    }
    
    func didTapFriends() {
        sheet = .friends(.makeDefault())
    }
}
