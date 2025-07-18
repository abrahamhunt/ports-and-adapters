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
            Text("Friends")
                .padding(16)
                .background(.green)
                .clipShape(.capsule)
        })
    }
}
