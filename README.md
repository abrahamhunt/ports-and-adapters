# ports-and-adapters
Illustrates a Swift Type-safe Module Architecture called Ports and Adapters

Code that accompanies presentation made to Utah Valley CocoaHeads
[Raw slide deck](https://docs.google.com/presentation/d/1LxNfmQRcJvRhQ2Ap4lRjM9WN--N6BFJn4OrBcyXndnI/edit?usp=sharing)

Utah Valley CocoaHeads Presentation:
- Presentation View: https://youtu.be/1NFFUesZ8rM
- Presenter View: https://www.youtube.com/watch?v=2MjWe3vZ2P4

This project illustrates an architectural pattern for Type-safe module architecture which strictly conforms to the [Interface Segregation Principle](https://en.wikipedia.org/wiki/Interface_segregation_principle) in that dependendcies between modules are reduced as much as possible e.g. no mid-level or `Feature` modules import each other. Additionally the `User` module which could be considered a more "foundational" module and thus could potentially be imported by a `feature` is instead not directly imported to further illustrate the powers of the pattern. Rationale for not directly relying on a shared model is illustrated in [these diagrams](https://www.figma.com/board/6mXYvefOzNjbj0uDBETNFl/Ports---Adapters-Presentations?node-id=0-1&t=nMoPonmeF131YRNJ-1)

Each module defines its own interface `Ports` and is given an implementation `Adapters` as a bound generic value. Use of generics allows for full type safety including `associatedType`s that are especially common in SwiftUI

By keeping modules independent of other modules they are also better adhere to the [Single Responsibility Principle](https://en.wikipedia.org/wiki/Single-responsibility_principle) in that a change to the internals of a module would be covered by owners of said module and external changes should not easily cascade to internals.

While this pattern does use the name Ports & Adapters it doesn't claim to be fully conforming to any pre-conceived notions of that naming from other fields. It takes the naming due to the shared primary characteristic of Ports = Interfaces and Adapters = Implementations.
