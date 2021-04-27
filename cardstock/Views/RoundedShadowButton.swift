//
//  RoundedShadowButton.swift
//  cardstock
//
//  Created by David Kumar on 4/26/21.
//

import UIKit

class RoundedShadowButton: UIButton{
    
    func setupView(){
        
        self.layer.cornerRadius = 5.0
        self.layer.shadowRadius = 10.0
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.zero // shadow wont move
    }
    
    override func awakeFromNib() {
        
        setupView()
    }
}
