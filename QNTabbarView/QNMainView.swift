//
//  QNMainView.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/16.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    var addImage:UIImageView?
    
    override func drawRect(rect: CGRect) {
    }
    
    required init(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
      override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    func setUI(){
        
        backgroundColor = UIColor.whiteColor()
        //十字线
        var hline:UIView = UIView(frame: CGRectMake(50, bounds.height/2, Utility.kWidth - 50 * 2, 0.5))
        hline.backgroundColor = UIColor(red: 190/255.0, green: 190/255.0, blue: 190/255.0, alpha: 0.5)
        addSubview(hline)
        var sline:UIView = UIView(frame: CGRectMake(Utility.kWidth/2 - 0.25, 50, 0.5, bounds.height - 100))
        sline.backgroundColor = UIColor(red: 190/255.0, green: 190/255.0, blue: 190/255.0, alpha: 0.5)
        addSubview(sline)
        //+号
        var addButton:UIButton = UIButton(frame: CGRectMake(center.x - 34/2, bounds.height/2 - 34/2, 34, 34))
        addButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        addButton.imageView?.image = UIImage(named:"add")
        addSubview(addButton)
        
        addImage = UIImageView(frame: CGRectMake(0, 0, 34, 34))
        addImage!.image = UIImage(named: "add")
        addButton.addSubview(addImage!)
        
        addButton.addTarget(self, action: "addButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)

        //各个项目
        for i in 0...3 {
            var itemView:QNMainItemView = QNMainItemView()
            itemView.tag = i + 1
            itemView.frame = CGRectMake(((CGFloat(i)%2))  * (bounds.width / 2), floor(CGFloat(i)/2) * (bounds.height / 2), Utility.kWidth/2, bounds.height/2)
            itemView.setUI()
            addSubview(itemView)
            var tapGes = UITapGestureRecognizer(target: self, action: "tapClick:")
            itemView.addGestureRecognizer(tapGes)
        }
        
    }
    func addButtonClick(button:UIButton){
        var applicationDelegate: UIApplicationDelegate = UIApplication.sharedApplication().delegate!
        var appdelegat:AppDelegate = applicationDelegate as! AppDelegate
        var selectVc:QNSelectTaskViewController = QNSelectTaskViewController()
        appdelegat.mainNav?.pushViewController(selectVc, animated: true)
    }
    
    func tapClick(tap:UITapGestureRecognizer){
        var mianVc:UIViewController = QNMainItemViewController()
        var appdelegate:AppDelegate = Utility.delegate
        appdelegate.mainNav?.pushViewController(mianVc, animated: true)
    }
}
