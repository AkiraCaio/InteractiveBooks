//
//  ViewController.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 08/03/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let data: [MainData] = [
        MainData(bookImage: Asset.cover1.image, difficulty: 0.5, backgroundColor: ColorName.backgroudMyBookFirstScreen.color, mainColor: .black, explanationText: L10n.ExplanationText.firstScreen),
        MainData(bookImage: Asset.cover2.image, difficulty: 0.3, backgroundColor: ColorName.backgroudMyBookSecoundScreen.color, mainColor: .black, explanationText: L10n.ExplanationText.secondScreen),
        MainData(bookImage: Asset.cover3.image, difficulty: 0.8, backgroundColor: ColorName.backgroudMyBookThirdScreen.color, mainColor: .white, explanationText: L10n.ExplanationText.thirdScreen),
    ]
    
    let mainView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 0
        
        return UICollectionView(frame: .zero, collectionViewLayout: layout)
    }()
    
    let startButton: UIButton = UIButton(type: .system)
        
    let customPageControl: CustomPageControoller = CustomPageControoller(frame: .zero)
    
    let difficultyView: UIView = UIView(frame: .zero)
    let difficultyViewLabel: UILabel = UILabel(frame: .zero)
    let difficultyViewProgressView: UIProgressView = UIProgressView(progressViewStyle: .bar)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarItemConfig()
        
        if(tabBarHeightAdjustable){
            self.configScreen()
        }
       
    }
    
    @objc func startButtonAction() {
        self.customPageControl.currentPage = self.customPageControl.currentPage == 2 ? 0 : self.customPageControl.currentPage + 1
        
        self.difficultyViewLabel.textColor = self.data[self.customPageControl.currentPage].mainColor
        
        self.difficultyViewProgressView.setProgress(self.data[self.customPageControl.currentPage].difficulty, animated: true)
        self.difficultyViewProgressView.tintColor = self.data[self.customPageControl.currentPage].mainColor
        self.difficultyViewProgressView.trackTintColor = self.data[self.customPageControl.currentPage].backgroundColor
        
        self.customPageControl.currentPageColor = self.data[self.customPageControl.currentPage].mainColor
        self.customPageControl.pageColor = self.data[self.customPageControl.currentPage].mainColor

        
        self.mainView.scrollToItem(at: IndexPath(row: self.customPageControl.currentPage, section: 0), at: .centeredHorizontally, animated: true)
        
    }
    
    fileprivate func tabBarItemConfig() {
        
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

extension ViewController:  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.layoutMargins = UIEdgeInsets.zero
        
        cell.bind(text: self.data[indexPath.row].explanationText, bookImage: self.data[indexPath.row].bookImage, backgroundColor: self.data[indexPath.row].backgroundColor, mainColor: self.data[indexPath.row].mainColor)
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.mainView.frame.width , height: self.mainView.frame.height)
        
    }
   
}

