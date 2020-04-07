//
//  ViewCustomPageController.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 25/03/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension CustomPageControoller {
    func configScreen() {
        
        configMainView()
    }
    
    func updateColor(){
        for index in 0..<self.subviews.count {
            if(index == self.currentPage) {
                self.subviews[index].backgroundColor = self.currentPageColor
            }else{
                self.subviews[index].backgroundColor = self.pageColor
            }
        }
    }
    
    func updateCurrentDot(indexCurrentDot: Int, indexOldDot: Int) {
        
        let oldView = self.subviews[indexOldDot]
        let currentView = self.subviews[indexCurrentDot]
        
        UIView.animate(withDuration: 0.2) {
            
            oldView.layer.cornerRadius = self.sizePageDot / 2
            self.constraintsHeight[indexOldDot].constant = self.sizePageDot
            self.constraintsWidht[indexOldDot].constant = self.sizePageDot
            
            currentView.layer.cornerRadius = self.sizeCurrentPageDot / 2
            self.constraintsHeight[indexCurrentDot].constant = self.sizeCurrentPageDot
            self.constraintsWidht[indexCurrentDot].constant = self.sizeCurrentPageDot
            
            self.layoutSubviews()
        }
        
    }
    
    fileprivate func configMainView() {
        
        self.backgroundColor = .clear
        
        for index in 0..<self.numberOfPages {
            
            ( self.currentPage == index )
                ? self.configMainViewCurrentDot(index: index)
                : self.configMainViewDot(index: index)
            
        }
        
    }
    
    fileprivate func configMainViewCurrentDot(index: Int) {
        
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        self.insertSubview(view, at: index)
        
        view.backgroundColor = self.currentPageColor
        
        view.layer.cornerRadius = self.sizeCurrentPageDot / 2
        
        self.constraintsHeight.append(view.heightAnchor.constraint(equalToConstant: self.sizeCurrentPageDot))
        self.constraintsWidht.append(view.widthAnchor.constraint(equalToConstant: self.sizeCurrentPageDot))
        
        if ( index == 0 ) {
            
            NSLayoutConstraint.activate([
                view.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                self.constraintsHeight.last!,
                self.constraintsWidht.last!
            ])
            
        }else{
            
            NSLayoutConstraint.activate([
                view.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                view.leftAnchor.constraint(equalTo: self.subviews[index - 1].rightAnchor, constant: self.spacaing),
                self.constraintsHeight.last!,
                self.constraintsWidht.last!
            ])
    
        }
        
    }
    
    fileprivate func configMainViewDot(index: Int) {
        
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        self.insertSubview(view, at: index)
        
        view.backgroundColor = self.pageColor
        
        view.layer.cornerRadius = sizePageDot / 2
        
        self.constraintsHeight.append(view.heightAnchor.constraint(equalToConstant: self.sizePageDot))
        self.constraintsWidht.append(view.widthAnchor.constraint(equalToConstant: self.sizePageDot))
        
        if ( index == 0 ) {
            
            NSLayoutConstraint.activate([
                view.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                self.constraintsHeight.last!,
                self.constraintsWidht.last!
            ])
            
        }else{
            
            NSLayoutConstraint.activate([
                view.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                self.constraintsHeight.last!,
                self.constraintsWidht.last!,
                view.leftAnchor.constraint(equalTo: self.subviews[index - 1].rightAnchor, constant: self.spacaing)
            ])
            
        }
    }
    
}
