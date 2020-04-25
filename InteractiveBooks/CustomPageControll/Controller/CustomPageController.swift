//
//  CustomPageController.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 25/03/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class CustomPageControoller: UIView {
    
    var constraintsHeight: [NSLayoutConstraint] = []
    var constraintsWidht: [NSLayoutConstraint] = []
    
    var sizeCurrentPageDot: CGFloat = 14
    
    var sizePageDot: CGFloat = 8
    
    var spacaing: CGFloat = 15
    
    private var oldCurrentPage: Int = 0
    var currentPage: Int = 0 {
        didSet {
            self.oldCurrentPage = self.currentPage == 0 ? self.numberOfPages - 1 : self.currentPage - 1
            self.updateCurrentDot()
        }
    }
    
    var numberOfPages: Int = 3
    
    var pageColor: UIColor = UIColor.black {
        didSet {
            self.updateColor()
        }
    }
    var currentPageColor: UIColor = UIColor.black {
        didSet {
            self.updateColor()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {

        self.constraintsHeight[oldCurrentPage].constant = self.sizePageDot
        self.constraintsWidht[oldCurrentPage].constant = self.sizePageDot
    
        self.constraintsHeight[currentPage].constant = self.sizeCurrentPageDot
        self.constraintsWidht[currentPage].constant = self.sizeCurrentPageDot
        
        super.updateConstraints()
    }
    
    fileprivate func updateColor(){
            for index in 0..<self.subviews.count {
                if(index == self.currentPage) {
                    self.subviews[index].backgroundColor = self.currentPageColor
                }else{
                    self.subviews[index].backgroundColor = self.pageColor
                }
            }
        }
        
    fileprivate func updateCurrentDot() {
        print("novo: \(self.currentPage), antigo: \(self.oldCurrentPage)")

        self.layoutSubviews()

        let oldView = self.subviews[self.oldCurrentPage]
        let currentView = self.subviews[self.currentPage]
        
        UIView.animate(withDuration: 0.2) {
            
            oldView.layer.cornerRadius = self.sizePageDot / 2
            
            currentView.layer.cornerRadius = self.sizeCurrentPageDot / 2
                   
            self.constraintsHeight[self.oldCurrentPage].constant = self.sizePageDot
            self.constraintsWidht[self.oldCurrentPage].constant = self.sizePageDot
            
            self.constraintsHeight[self.currentPage].constant = self.sizeCurrentPageDot
            self.constraintsWidht[self.currentPage].constant = self.sizeCurrentPageDot
            
            self.layoutSubviews()
        }
        
    }
    
    
}
