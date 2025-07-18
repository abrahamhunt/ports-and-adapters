// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@MainActor
public protocol ViewMaker: AnyObject, Identifiable {
    associatedtype MadeView: View
    
    func makeView() -> MadeView
}
