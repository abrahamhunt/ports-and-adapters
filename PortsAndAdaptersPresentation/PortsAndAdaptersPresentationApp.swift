//
//  PortsAndAdaptersPresentationApp.swift
//  PortsAndAdaptersPresentation
//
//  Created by Abe Hunt on 7/16/25.
//

import SwiftUI

@main
struct PortsAndAdaptersPresentationApp: App {
    let model = AppRootScreenModel()
    
    var body: some Scene {
        WindowGroup {
            AppRootScreen(viewModel: model)
        }
    }
}
