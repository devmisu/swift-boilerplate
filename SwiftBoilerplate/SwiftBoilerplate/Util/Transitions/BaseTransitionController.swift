//
//  BaseTransitionController.swift
//  SwiftBoilerplate
//
//  Created by Felix Chacaltana on 1/27/20.
//  Copyright © 2020 Felix Chacaltana. All rights reserved.
//

import UIKit

protocol BaseTransitionControllerDelegate {
    
    func transitionPush(using transitionContext: UIViewControllerContextTransitioning)
    func transitionPop(using transitionContext: UIViewControllerContextTransitioning)
}

class BaseTransitionController: NSObject, UIViewControllerAnimatedTransitioning, BaseTransitionControllerDelegate {
    
    // MARK: - Properties
    
    var origin          : UIViewController?
    var destination     : UIViewController?
    var transitionMode  : UINavigationController.Operation = .none
    
    // MARK: - Initialization
    
    init(origin: UIViewController, destination: UIViewController, operation: UINavigationController.Operation) {
        
        self.origin         = origin
        self.destination    = destination
        self.transitionMode = operation
    }
    
    // MARK: - Methods
    
    internal func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        switch self.transitionMode {
        case .push:
            self.transitionPush(using: transitionContext)
            
        case .pop:
            self.transitionPop(using: transitionContext)
            
        default:
            break
        }
    }
    
    func transitionPush(using transitionContext: UIViewControllerContextTransitioning) {
        transitionContext.completeTransition(true)
    }

    func transitionPop(using transitionContext: UIViewControllerContextTransitioning) {
        transitionContext.completeTransition(true)
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0
    }
    
}
