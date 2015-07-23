//
//  QNMainItemView.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/23.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainItemView: UIView {
    var tapGes:UITapGestureRecognizer?
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    func setUI(){
        tapGes = UITapGestureRecognizer(target: self, action: "tapClick")
        addGestureRecognizer(tapGes!)
    }

    func tapClick(){
        
    }
}
