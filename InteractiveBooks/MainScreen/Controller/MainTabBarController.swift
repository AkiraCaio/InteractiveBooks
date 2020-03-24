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
        
        self.configTabBar()
        
        //After update in the height of tabBar can config the ViewController Screen
        let vc = self.viewControllers![0] as! ViewController
        vc.configScreen()
        
        tabBarHeightAdjustable = true

    }
    
    private func config() {
        self.configVC()
        
    }
    
    private func configTabBar() {
        
        //Color text of select VC
        self.tabBar.tintColor = .black
        
        //Color of background
        self.tabBar.barTintColor = .white
        
        //Remove the top border from tabBar
        self.tabBar.layer.borderWidth = 0
        //        self.tabBar.clipsToBounds = true
        
        //Incriment in the height of tab bar
        let newTabBarHeight = defaultTabBarHeight + defaultTabBarHeight * 0.3
        let newTabBarOringinY = view.frame.size.height - newTabBarHeight

        tabBar.frame.size.height = newTabBarHeight
        tabBar.frame.origin.y = newTabBarOringinY
        
//        //Create the topLeft and topRight radiun corner
//        let cornerRadius = 25
//
//        let maskPath = UIBezierPath(
//            roundedRect: self.tabBar.bounds,
//            byRoundingCorners: [.topLeft,.topRight],
//            cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)
//        )
//
//        let shape = CAShapeLayer()
//
//        shape.path = maskPath.cgPath
//
//        self.tabBar.layer.mask = shape
        
        // OR
        
//        self.tabBar.layer.masksToBounds = true
//        self.tabBar.isTranslucent = true
//        self.tabBar.barStyle = .blackOpaque
//        self.tabBar.layer.cornerRadius = 25
//        self.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        
//
        self.tabBar.layer.shadowColor = UIColor(red: 0.25, green: 0.29, blue: 0.36, alpha: 0.1).cgColor
        self.tabBar.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.tabBar.layer.masksToBounds = false
        self.tabBar.layer.shadowRadius = 8
        self.tabBar.layer.shadowOpacity = 1
        self.tabBar.layer.cornerRadius = 20
        
    }
    
    private func configVC() {
        let firstVC = ViewController()
        
        let secoundVC = UIViewController()
        secoundVC.view.backgroundColor = .white
        secoundVC.tabBarItem = UITabBarItem(title: L10n.Title.secoundVC, image: Asset.iconDiscover.image, tag: 1)
        
        let thierdVC = UIViewController()
        thierdVC.view.backgroundColor = .white
        thierdVC.tabBarItem = UITabBarItem(title: L10n.Title.thierdVC, image: Asset.iconProfile.image, tag: 2)
        
        self.viewControllers = [firstVC, secoundVC, thierdVC]
    }
    
}

extension MainTabBarController: UITabBarControllerDelegate {
    //    Check if viewController is called
//        func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//            
//                       
//            return false;
//        }
}
