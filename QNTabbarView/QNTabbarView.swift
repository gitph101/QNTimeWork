//
//  QNTabbarView.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/16.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNTabbarView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    var leftButton:UIButton?
    var rightButton:UIButton?
    func setUI(){
        backgroundColor = UIColor.blackColor()
        addLeftButton()
        addRightButton()
    }
    
    func addLeftButton(){
        leftButton = UIButton(frame: CGRectMake(0, 0, 44, 49))
        leftButton?.backgroundColor = UIColor.grayColor()
        addSubview(leftButton!)
    }
    
    func addRightButton(){
        rightButton = UIButton(frame: CGRectMake(Utility.kWidth - 44, 0, 44, 49))
        rightButton?.backgroundColor = UIColor.yellowColor()

        addSubview(rightButton!)
    }
}
