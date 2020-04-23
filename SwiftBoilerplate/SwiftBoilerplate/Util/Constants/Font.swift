//
//  Font.swift
//  SwiftBoilerplate
//
//  Created by Felix Chacaltana on 4/22/20.
//  Copyright © 2020 Felix Chacaltana. All rights reserved.
//

import UIKit

struct Font {
    
    private init() { }
    
    private static func font(_ name: String, size: CGFloat) -> UIFont {
        return UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    // write your code here
}
