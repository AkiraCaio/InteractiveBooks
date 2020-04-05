//
//  ViewViewController.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 21/03/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension ViewController{
    
    func configScreen() {
        
        self.view.backgroundColor = ColorName.backgroudMyBookFirstScreen.color
        
        self.configMainView()
        
        self.configButtonAction()
        
        self.testConfigCustomPageController()
    }
    
    fileprivate func configMainView() {
        self.mainView.translatesAutoresizingMaskIntoConstraints = false
        
        self.mainView.backgroundColor = ColorName.backgroudMyBookFirstScreen.color
        
        self.view.addSubview(self.mainView)
        
        NSLayoutConstraint.activate([
            self.mainView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.mainView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.mainView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -self.tabBarController!.tabBar.frame.size.height),
        ])
    }
    
    fileprivate func configButtonAction() {
        
        self.startButton.addTarget(self, action: #selector(ViewController.startButtonAction), for: .touchDown)
        
        self.startButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.startButton.backgroundColor = ColorName.backgroudStartButton.color
        
        self.startButton.setTitle(L10n.Button.title, for: .normal)
        self.startButton.setTitleColor(.black, for: .normal)
        self.startButton.titleLabel?.font = UIFont(name: "Metropolis-SemiBold", size: 14)
        
        self.startButton.layer.shadowColor = UIColor(red: 0.25, green: 0.29, blue: 0.36, alpha: 0.1).cgColor
        self.startButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.startButton.layer.masksToBounds = false
        self.startButton.layer.shadowRadius = 8
        self.startButton.layer.shadowOpacity = 1
        self.startButton.layer.cornerRadius = 20
        
        let tabBarHeight = self.tabBarController!.tabBar.frame.height
        
        self.view.addSubview(self.startButton)
        
        NSLayoutConstraint.activate([
            self.startButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -(tabBarHeight + 40)),
            self.startButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.startButton.widthAnchor.constraint(equalToConstant: 157),
            self.startButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }
    
    fileprivate func testConfigCustomPageController() {
        self.customPageControl.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(self.customPageControl)
        
        NSLayoutConstraint.activate([
            self.customPageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.customPageControl.widthAnchor.constraint(equalToConstant: 90),
            self.customPageControl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            self.customPageControl.heightAnchor.constraint(equalToConstant: 12)
        ])
        
        self.customPageControl.configScreen()
        
    }
}
