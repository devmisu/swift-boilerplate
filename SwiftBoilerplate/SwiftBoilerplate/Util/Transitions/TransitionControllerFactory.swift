//
//  TransitionControllerFactory.swift
//  SwiftBoilerplate
//
//  Created by Felix Chacaltana on 1/27/20.
//  Copyright © 2020 Felix Chacaltana. All rights reserved.
//

import UIKit

class TransitionControllerFactory {
    
    // MARK: - Methods
    
    class func instantiate(origin: UIViewController, destination: UIViewController, operation: UINavigationController.Operation)-> BaseTransitionController? {

        switch (origin, destination, operation) {
        
        // Code here...
        
        default:
            return nil
        }
    }
    
}
