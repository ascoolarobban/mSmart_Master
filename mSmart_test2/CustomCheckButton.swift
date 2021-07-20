//
//  customButton.swift
//  mSmart_test2
//
//  Created by Robin Ellingsen on 2021-07-20.
//

import UIKit

class CustomCheckButton: UIButton {
    override init(frame : CGRect){
        super.init(frame : frame)
    }
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
        setRadiusAndShadow()
    }
    func setRadiusAndShadow(){
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
//        self.layer.shadowRadius = 10
//        self.layer.shadowOpacity = 1.0
//        self.layer.shadowOffset = CGSize(width: 3, height: 3)
//        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.borderWidth = 1;
        self.layer.borderColor = UIColor.systemGray.cgColor
        
    }
}
