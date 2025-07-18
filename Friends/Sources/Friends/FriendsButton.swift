//
//  FriendsButton.swift
//  Friends
//
//  Created by Abe Hunt on 7/18/25.
//

import SwiftUI

public struct FriendsButton: View {
    let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public var body: some View {
        Button(action: action, label: {
            // Assuming different teams own Friends and UserProfile we now have a button that the Friends team can update without needing to involve UserProfile reviewers. Additionally if other modules used this button they wouldn't need to review either.
            Text("Friends")
                .padding(16)
                .background(.green)
                .clipShape(.capsule)
        })
    }
}
