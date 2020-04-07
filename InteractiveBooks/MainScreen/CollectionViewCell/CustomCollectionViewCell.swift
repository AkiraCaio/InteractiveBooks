//
//  CustomCollectionViewCell.swift
//  InteractiveBooks
//
//  Created by Caio Pinho on 06/04/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
        
    let explanationText: UILabel = {
        let lbl = UILabel()
       
        lbl.textAlignment = .center
        lbl.font = UIFont(name: "AbhayaLibre-Regular", size: 12)
        
        return lbl
    }()
    
    let bookImage: UIImageView = UIImageView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(text: String, bookImage: UIImage, backgroundColor: UIColor, mainColor: UIColor) {
        
        self.explanationText.text = text
        
        self.backgroundColor = backgroundColor
        
        self.explanationText.textColor = mainColor
        
        self.bookImage.image = bookImage
        
    }
    
}
