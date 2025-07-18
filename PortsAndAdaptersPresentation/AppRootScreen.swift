//
//  AppRootScreen.swift
//  PortsAndAdaptersPresentation
//
//  Created by Abe Hunt on 7/16/25.
//

import SwiftUI

struct AppRootScreen: View {
    @ObservedObject var viewModel: AppRootScreenModel
    
    var body: some View {
        VStack {
            Button {
                viewModel.didTapFriends()
            } label: {
                Text("Show Friends")
            }
            
            Button {
                viewModel.didTapUserProfile()
            } label: {
                Text("Show User Profile")
            }
        }
        .padding()
        .sheet(item: $viewModel.sheet, content: {
            switch $0 {
            case let .userProfile(model): model.makeView()
            case let .friends(model): model.makeView()
            }
        })
    }
}

#Preview {
    let model = AppRootScreenModel()
    
    AppRootScreen(viewModel: model)
}
