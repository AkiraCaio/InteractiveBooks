//
//  MainTabBarController.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 09/03/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    fileprivate lazy var defaultTabBarHeight = { tabBar.frame.size.height }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        self.config()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        //        Create the topLeft and topRight radiun corner
        let cornerRadius = 25
        
        let maskPath = UIBezierPath(
            roundedRect: self.tabBar.bounds,
            byRoundingCorners: [.topLeft,.topRight],
            cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
        )
        
        let shape = CAShapeLayer()
        
        shape.path = maskPath.cgPath
        
        self.tabBar.layer.mask = shape
        
        //Incriment in the height of tab bar
        let newTabBarHeight = defaultTabBarHeight + defaultTabBarHeight * 0.3
        let newTabBarOringinY = view.frame.size.height - newTabBarHeight
        
        var newFrame = tabBar.frame
        
        newFrame.size.height = newTabBarHeight
        newFrame.origin.y = newTabBarOringinY
        
        tabBar.frame = newFrame
    }
    
    private func config() {
        self.configVC()
        self.configTabBar()
    }
    
    private func configTabBar() {
        
        //Color text of select VC
        self.tabBar.tintColor = .black
        
        //Color of background
        self.tabBar.barTintColor = .white
        
        //Remove the top border from tabBar
        self.tabBar.layer.borderWidth = 0
        self.tabBar.clipsToBounds = true
    }
    
    private func configVC() {
        let firstVC = ViewController()
        
        let secoundVC = UIViewController()
        secoundVC.view.backgroundColor = .yellow
        secoundVC.tabBarItem = UITabBarItem(title: L10n.Title.secoundVC, image: Asset.iconDiscover.image, tag: 1)
        
        let thierdVC = UIViewController()
        thierdVC.view.backgroundColor = .blue
        thierdVC.tabBarItem = UITabBarItem(title: L10n.Title.thierdVC, image: Asset.iconProfile.image, tag: 2)
        
        self.viewControllers = [firstVC, secoundVC, thierdVC]
    }
    
}

extension MainTabBarController: UITabBarControllerDelegate {
    //    Check if viewController is called
    //    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    //        return true;
    //    }
}
