//
//  MainData.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 06/04/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

struct MainData {
    
    var bookImage: UIImage
    var difficulty: Float
    var backgroundColor: UIColor
    var mainColor: UIColor
    var explanationText: String
    
    init(bookImage: UIImage, difficulty: Float, backgroundColor: UIColor, mainColor: UIColor, explanationText: String) {
        self.bookImage = bookImage
        self.difficulty = difficulty
        self.backgroundColor = backgroundColor
        self.mainColor = mainColor
        self.explanationText = explanationText
    }
    
}
