//
//  QNMainTimeViewCell.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/21.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainTimeViewCell: UITableViewCell {
    let lineWidth:CGFloat = Utility.kWidth/2
    var qnImageView:UIImageView?
    var sline:UIView?
    var timeLable:UILabel?
    var taskLable:UILabel?
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
        qnImageView = UIImageView(frame:CGRectMake(lineWidth - 10, bounds.height - 10, 20, 20))
        qnImageView?.backgroundColor = UIColor.redColor()
        contentView.addSubview(qnImageView!)
        //时间
        timeLable = UILabel(frame: CGRectMake(0, Utility.kGapH, lineWidth - 20 * Utility.kGapW, bounds.height - 2 * Utility.kGapH))
        contentView.addSubview(timeLable!)
        timeLable?.textAlignment = NSTextAlignment.Right
        timeLable?.text = "6:00"
        //task
        taskLable = UILabel(frame: CGRectMake(lineWidth, Utility.kGapH, Utility.kWidth - lineWidth, bounds.height - Utility.kGapH))
        contentView.addSubview(taskLable!)
        taskLable?.textAlignment = NSTextAlignment.Left
        taskLable?.text = "努力去获得"

    }
    
    func changeUI(){
        sline?.frame = CGRectMake(lineWidth - 0.25, 0, 0.5, bounds.height)
        qnImageView?.frame = CGRectMake(lineWidth - 10, bounds.height/2 - 10, 20, 20)

        timeLable?.frame = CGRectMake(0, Utility.kGapH, lineWidth - 5 * Utility.kGapW, bounds.height - 2 * Utility.kGapH)
        taskLable?.frame = CGRectMake(lineWidth + 4 * Utility.kGapW,Utility.kGapH, Utility.kWidth - lineWidth - 2 * Utility.kGapW, bounds.height - 2 * Utility.kGapH)
    }
}
