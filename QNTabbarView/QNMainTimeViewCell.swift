//
//  QNMainTimeViewCell.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/21.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainTimeViewCell: UITableViewCell {
    let lineWidth = Utility.kWidth/2
    var qnImageView:UIImageView?
    var sline:UIView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUI()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUI(){
        //1.竖线
        sline = UIView(frame: CGRectMake(lineWidth - 0.25, 0, 0.5, bounds.height))
        sline!.backgroundColor = UIColor(red: 190/255.0, green: 190/255.0, blue: 190/255.0, alpha: 0.5)
        contentView.addSubview(sline!)
        //2.图标
        qnImageView = UIImageView(frame:CGRectMake(lineWidth - 10, 40 - 10, 20, 20))
        qnImageView?.backgroundColor = UIColor.redColor()
        contentView.addSubview(qnImageView!)
        Utility.kWidth
    }
    
    func changeUI(){
        sline?.frame = CGRectMake(lineWidth - 0.25, 0, 0.5, bounds.height)
    }
}
