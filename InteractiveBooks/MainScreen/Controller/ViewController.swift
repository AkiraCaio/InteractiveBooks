//
//  ViewController.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 08/03/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let mainView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    let startButton: UIButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItemConfig()
        
        if(tabBarHeightAdjustable){
            self.configScreen()
        }
       
    }
    
    private func tabBarItemConfig() {
        
        //        How to change the image on select index
        //        self.tabBarItem.selectedImage = Asset.iconProfile.image
        
        //        other way to config
        //        self.tabBarItem.image = Asset.iconBook.image
        //        self.tabBarItem.title = L10n.Title.main
        
        //        how to make a icon wihout name and in  center of space
        //        tabBarItem.title = ""
        //        tabBarItem.imageInsets = UIEdgeInsets(top: 12, left: 0, bottom: -6, right: 0)
        
        
        //        self.tabBarItem = UITabBarItem(title: L10n.Title.main, image: Asset.iconProfile.image, selectedImage: Asset.iconBook.image)
        
        self.tabBarItem = UITabBarItem(title: L10n.Title.main, image: Asset.iconBook.image, tag: 0)
    }
    
}

extension ViewController:  UICollectionViewDelegate {
    
}

