//
//  NavigationController.swift
//  Ratios
//
//  Created by Edward Wellbrook on 09/09/2017.
//  Copyright © 2017 Brushed Type. All rights reserved.
//

import UIKit

fileprivate let descriptor = UIFontDescriptor(fontAttributes: [ .family: "Tofino Personal" ])
fileprivate let regularWeightTraits = [ UIFontDescriptor.TraitKey.weight: UIFont.Weight.regular ]
fileprivate let mediumWeightTraits = [ UIFontDescriptor.TraitKey.weight: UIFont.Weight.medium ]

fileprivate let largeFont = UIFont(descriptor: descriptor, size: 42)
fileprivate let titleFont = UIFont(descriptor: descriptor.addingAttributes([ .traits: mediumWeightTraits ]), size: 13)

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UIBarButtonItem.appearance().setTitleTextAttributes([
            .font: UIFont(descriptor: descriptor.addingAttributes([ .traits: regularWeightTraits ]), size: 17),
        ], for: .normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([
            .font: UIFont(descriptor: descriptor.addingAttributes([ .traits: regularWeightTraits ]), size: 17),
        ], for: .highlighted)

        self.navigationBar.tintColor = UIColor(red:0.31, green:0.28, blue:0.25, alpha:1.0)
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.titleTextAttributes = [
            .font: UIFont(descriptor: descriptor.addingAttributes([ .traits: mediumWeightTraits ]), size: 17),
            .foregroundColor: UIColor(red:0.31, green:0.28, blue:0.25, alpha:1.0)
        ]
    }

}

extension NavigationController: UIViewControllerTransitioningDelegate {

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return TransitionAnimator(transition: .presenting)
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return TransitionAnimator(transition: .dismissing)
    }

}
