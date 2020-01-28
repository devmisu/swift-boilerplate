//
//  NavigationControllerManager.swift
//  SwiftBoilerplate
//
//  Created by Felix Chacaltana on 1/27/20.
//  Copyright © 2020 Felix Chacaltana. All rights reserved.
//

import UIKit

final class NavigationControllerManager: NSObject, UINavigationControllerDelegate {

    // MARK: - Methods
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return TransitionControllerFactory.instantiate(origin: fromVC, destination: toVC, operation: operation)
    }
    
}
