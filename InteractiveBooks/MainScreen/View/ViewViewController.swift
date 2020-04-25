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
        
        self.configCustomPage()
        
        self.configDifficultyView()
    }
    
    fileprivate func configMainView() {
        self.mainView.translatesAutoresizingMaskIntoConstraints = false
                
        self.view.addSubview(self.mainView)
        
        NSLayoutConstraint.activate([
            self.mainView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.mainView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.mainView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        
        self.mainView.delegate = self
        self.mainView.dataSource = self
        
        self.mainView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        self.mainView.showsHorizontalScrollIndicator = false
        
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
    
    fileprivate func configCustomPage() {
        self.customPageControl.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(self.customPageControl)
        
        NSLayoutConstraint.activate([
            self.customPageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.customPageControl.widthAnchor.constraint(equalToConstant: 90),
            self.customPageControl.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 60),
            self.customPageControl.heightAnchor.constraint(equalToConstant: 12)
        ])
        
        if (self.customPageControl.subviews.isEmpty) {
            self.customPageControl.configScreen()
        }
        
    }
    
    fileprivate func configDifficultyView() {
                
        self.difficultyView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.difficultyView)
        NSLayoutConstraint.activate([
            self.difficultyView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 100),
            self.difficultyView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -100),
            self.difficultyView.bottomAnchor.constraint(equalTo: self.startButton.topAnchor, constant: -140)
        ])
        
        self.difficultyViewLabel.text = L10n.ProgressBar.title
        self.difficultyViewLabel.font = UIFont(name: "Metropolis-SemiBold", size: 14)
        self.difficultyViewLabel.translatesAutoresizingMaskIntoConstraints = false
        self.difficultyView.addSubview(self.difficultyViewLabel)
        NSLayoutConstraint.activate([
            self.difficultyViewLabel.leftAnchor.constraint(equalTo: self.difficultyView.leftAnchor, constant: 4),
            self.difficultyViewLabel.centerYAnchor.constraint(equalTo: self.difficultyView.centerYAnchor)
        ])
        
        self.difficultyViewProgressView.setProgress(0.5, animated: true)
        
        self.difficultyViewProgressView.trackTintColor = .white
        self.difficultyViewProgressView.tintColor = .black
        
        self.difficultyViewProgressView.layer.cornerRadius = 4
        self.difficultyViewProgressView.clipsToBounds = true
        
        self.difficultyViewProgressView.layer.borderWidth = 2

        
        self.difficultyViewProgressView.translatesAutoresizingMaskIntoConstraints = false
        self.difficultyView.addSubview(self.difficultyViewProgressView)
        NSLayoutConstraint.activate([
            self.difficultyViewProgressView.rightAnchor.constraint(equalTo: self.difficultyView.rightAnchor),
            self.difficultyViewProgressView.leftAnchor.constraint(equalTo: self.difficultyViewLabel.rightAnchor, constant: 8),
            self.difficultyViewProgressView.centerYAnchor.constraint(equalTo: self.difficultyView.centerYAnchor),
            self.difficultyViewProgressView.heightAnchor.constraint(equalToConstant: 8)
        ])
        
    }
}
