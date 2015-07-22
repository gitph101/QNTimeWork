//
//  QNMainTimeTableSectionHeadView.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/22.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainTimeTableSectionHeadView: UIView {
    let lineWidth = Utility.kWidth/2
    var qnImageView:UIImageView?
    var sline:UIView?
    var timeLable:UILabel?
    var workLable:UILabel?
    
    
    func setUI(){
        println(self.bounds.height)
        
        backgroundColor = UIColor.whiteColor()
        //1.竖线
        sline = UIView(frame: CGRectMake(lineWidth - 0.25, 0, 0.5, bounds.height))
        sline!.backgroundColor = UIColor(red: 190/255.0, green: 190/255.0, blue: 190/255.0, alpha: 0.5)
        addSubview(sline!)
        //2.图标
        qnImageView = UIImageView(frame:CGRectMake(lineWidth - 10, bounds.height/2 - 10, 20, 20))
        qnImageView?.backgroundColor = UIColor.redColor()
        addSubview(qnImageView!)
        Utility.kWidth
        // 时间选项
        timeLable = UILabel(frame: CGRectMake(0, 5, lineWidth, bounds.height - 10))
    }

}
