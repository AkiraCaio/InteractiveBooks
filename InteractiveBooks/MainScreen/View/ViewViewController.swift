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
        
    }
    
    func configMainView() {
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
}
