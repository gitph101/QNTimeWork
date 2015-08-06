//
//  QNMainItemView.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/23.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainItemView: UIView ,UITableViewDataSource,UITableViewDelegate{
    var tapGes:UITapGestureRecognizer?
    var titleLable:UILabel?
    var detailLable:UILabel?
    var tabble:UITableView?
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    func setUI(){
//        titleLable = UILabel(frame: CGRectMake(Utility.kGapW, Utility.kGapH, Utility.kWidth/2, 20))
//        addSubview(titleLable!)
//        titleLable!.text = "这只是一个例子而已"
        
        tabble = UITableView(frame: CGRectMake(0, 0, bounds.width, bounds.height), style: UITableViewStyle.Grouped)
        addSubview(tabble!)
        tabble?.dataSource = self
        tabble?.delegate = self
        tabble!.registerClass(QNMainTimeViewCell.self, forCellReuseIdentifier: "cell")        // Do any additional setup after loading the view.
        tabble?.separatorStyle = UITableViewCellSeparatorStyle.None
    }

    func tapClick(){
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! QNMainTimeViewCell
        cell.frame = CGRectMake(0, 0, Utility.kWidth, 80)
        cell.changeUI()
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }

    
}
