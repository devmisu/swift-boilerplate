//
//  Settings.swift
//  SwiftBoilerplate
//
//  Created by Felix Chacaltana on 10/06/22.
//

import Foundation

protocol Settings {
    
    var displayLogs: Bool { get }
    var baseUrl: String { get }
}

struct Development: Settings {
    
    var displayLogs: Bool = true
    var baseUrl: String = "development"
}

struct Production: Settings {
    
    var displayLogs: Bool = false
    var baseUrl: String = "production"
}
