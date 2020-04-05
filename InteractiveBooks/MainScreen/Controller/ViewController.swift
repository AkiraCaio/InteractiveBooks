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
        
    let customPageControl: CustomPageControoller = CustomPageControoller(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItemConfig()
        
        if(tabBarHeightAdjustable){
            self.configScreen()
        }
       
    }
    
    override func viewDidLayoutSubviews() {
        
//        var transform = CGAffineTransform.identity
//        transform = transform.scaledBy(x: 2, y: 2)
//        transform = transform.translatedBy(x: 50, y: 80)

//        transform = CGAffineTransform(scaleX: 2, y: 2)
        
//        self.pageControll.subviews[self.pageControll.currentPage].transform = CGAffineTransform(scaleX: 2, y: 2)
        
//        self.pageControll.subviews[self.pageControll.currentPage].transform = transform
        
        
//        let currectPageOriginY = self.pageControll.subviews[self.pageControll.currentPage].frame.origin.y
//
//        self.pageControll.subviews[self.pageControll.currentPage].frame.origin.y = currectPageOriginY / 2
//
//        self.pageControll.subviews[self.pageControll.currentPage].transform = CGAffineTransform(translationX: 2, y: 1)
        
        
        
      
    }
    
    
    @objc func startButtonAction() {
        self.customPageControl.currentPage = 2
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

