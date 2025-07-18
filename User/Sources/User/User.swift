// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct User: Identifiable, Sendable {
    public let name: String
    public let photoURL: URL?
    public let handle: String
    public let friends: [User]

    public var id: String { handle }

    public static let bob: Self = .init(name: "Bob", photoURL: .init(string: "https://images.unsplash.com/photo-1591025207163-942350e47db2?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), handle: "bob-man", friends: [jim, frank])
    public static let jim: Self = .init(name: "Jim", photoURL: .init(string: "https://plus.unsplash.com/premium_photo-1684992858411-3e3ddf37c4c9?q=80&w=1760&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), handle: "jim-jones", friends: [])
    public static let frank: Self = .init(name: "Frank", photoURL: .init(string: "https://plus.unsplash.com/premium_photo-1684943834572-aefa4307e5a8?q=80&w=2066&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"), handle: "n-stein", friends: [])
}
