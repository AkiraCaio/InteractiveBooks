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
            self.updateCurrentDot(indexCurrentDot: self.currentPage, indexOldDot: self.oldCurrentPage)
            self.oldCurrentPage = self.currentPage
        }
    }
    
    var numberOfPages: Int = 5
    
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
    
    
    
}
