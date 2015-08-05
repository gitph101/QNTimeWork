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
    var titleLable:UILabel?
    var detailLable:UILabel?
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    func setUI(){
                titleLable = UILabel(frame: CGRectMake(Utility.kGapW, Utility.kGapH, Utility.kWidth/2, 20))
        addSubview(titleLable!)
        titleLable!.text = "这只是一个例子而已"
    }

    func tapClick(){
        
    }
}
