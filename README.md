# Swift Boilerplate
My custom template for Swift projects.

## Project structure
```
└─ SwiftBoilerplate
   └─ Info.plist
   └─ AppDelegate.swift
   └─ SceneDelegate.swift
   └─ SwiftBoilerplate.xcdatamodeld
   └─ SwiftBoilerplate
   │  └─ Util
   │  │  └─ Constants
   │  │  │  └─ Closure.swift
   │  │  │  └─ Color.swift
   │  │  │  └─ Identifier.swift
   │  │  │  └─ Message.swift
   │  │  └─ Libs
   │  │  └─ Transitions
   │  │  │  └─ NavigationControllerManager.swift
   │  │  │  └─ TransitionControllerFactory.swift
   │  │  │  └─ BaseTransitionController.swift
   │  └─ Resources
   │  │  └─ Assets.xcassets
   │  │  └─ Fonts
   │  │  └─ Files
   │  └─ Extension
   │  └─ Entity
   │  └─ Logic
   │  └─ Networking
   │  │  └─ EndPoints.swift
   │  │  └─ Services
   │  │  └─ Sockets
   │  └─ Storage
   │  └─ Storyboard
   │  └─ Controller
```

## Remove junk files
Execute this command in root folder.

```
find . -name .keep -delete
```