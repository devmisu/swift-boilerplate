//
//  ContainerBuilder.swift
//  SwiftBoilerplate
//
//  Created by Felix Chacaltana on 11/06/22.
//

import Foundation
import UIKit

final class ContainerBuilder {
    
    private(set) var settings: Settings
    private(set) var dependencies: Dependencies
    private(set) var repositories: Repositories
    
    init(settings: Settings, dependencies: Dependencies, repositories: Repositories) {
        self.settings = settings
        self.dependencies = dependencies
        self.repositories = repositories
    }
    
    static func getSettings(for env: String?) -> Settings {
        switch env {
        case "Production": return Production()
        default: return Development()
        }
    }
}

@propertyWrapper
struct Injected<T> {
    
    private let keyPath: KeyPath<ContainerBuilder, T>
    
    var wrappedValue: T {
        (UIApplication.shared.delegate as! AppDelegate).containerBuilder[keyPath: keyPath]
    }
    
    init(_ keyPath: KeyPath<ContainerBuilder, T>) {
        self.keyPath = keyPath
    }
}
