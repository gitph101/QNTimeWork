//
//  QNMainViewController.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/16.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainViewController: UIViewController {

    let kBelowViewHeight:CGFloat = 200
    var mainView:QNMainView?   //这样做系统会自动初始化mainView为nil
    var tabbarView:QNTabbarView?
    var mainBgView:UIView?
    var belowView:QNBelowView?
    var mainTimeView:QNMainTimeView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        navigationController?.navigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    func setUI(){
        mainBgView = UIView(frame: CGRectMake(0, 0, Utility.kWidth, Utility.KHeight))
        view.addSubview(mainBgView!)
        
        mainView = QNMainView(frame: CGRectMake(0, 80, Utility.kWidth, Utility.KHeight - 49 - 80))
        mainView?.setUI()
        mainBgView!.addSubview(mainView!)
        
        tabbarView = QNTabbarView(frame: CGRectMake(0, Utility.KHeight - 49, Utility.kWidth, 49))
        tabbarView?.setUI()
        mainBgView!.addSubview(tabbarView!)
        tabbarView?.rightButton?.addTarget(self, action: "rightClick:", forControlEvents: UIControlEvents.TouchUpInside)
        tabbarView?.leftButton?.addTarget(self, action: "leftClick:", forControlEvents: UIControlEvents.TouchUpInside)
        
        belowView = QNBelowView(frame: CGRectMake(0, Utility.KHeight, Utility.kWidth, kBelowViewHeight))
        view.addSubview(belowView!)
        
        mainTimeView = QNMainTimeView()
        mainTimeView?.setUI()
        mainBgView?.addSubview(mainTimeView!)
        
        
        var url:NSURL = NSURL(string: "http://musicdata.baidu.com/data2/lrc/245875468/%E6%B8%85%E5%B9%B3%E8%B0%83.lrc")!
        
    }
    
    func rightClick(button:UIButton){
        if button.selected == true {
            button.selected = false
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.mainBgView?.frame = CGRectMake(0, 0, Utility.kWidth, Utility.KHeight)
                self.belowView?.frame = CGRectMake(0, Utility.KHeight,Utility.kWidth, self.kBelowViewHeight)
            })

        }else{
            button.selected = true
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.mainBgView?.frame = CGRectMake(0, -self.kBelowViewHeight, Utility.kWidth, Utility.KHeight)
                self.belowView?.frame = CGRectMake(0, Utility.KHeight - self.kBelowViewHeight,Utility.kWidth, self.kBelowViewHeight)
            })
        }
    }
    
    func leftClick(button:UIButton){
        var timeVc:QNMainTimeViewController = QNMainTimeViewController()
        self.navigationController?.pushViewController(timeVc, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
     