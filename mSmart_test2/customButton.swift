//
//  customButton.swift
//  mSmart_test2
//
//  Created by Robin Ellingsen on 2021-07-20.
//

import UIKit

class customButton: UIButton {
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

        
    }
}
