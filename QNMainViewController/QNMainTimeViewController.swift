//
//  QNMainTimeViewController.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/21.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNMainTimeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var tabbarView:UITableView?
    var headView:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        // Do any additional setup after loading the view.
    }

    func setUI(){
        view.backgroundColor = UIColor.whiteColor()
        navigationController?.navigationBarHidden = false
        self.title = "时间轴"
        
        tabbarView = UITableView(frame: CGRectMake(0, 0, Utility.kWidth, Utility.KHeight), style: UITableViewStyle.Grouped)
        tabbarView?.dataSource = self
        tabbarView?.delegate = self
        view.addSubview(tabbarView!)
        tabbarView!.registerClass(QNMainTimeViewCell.self, forCellReuseIdentifier: "cell")        // Do any additional setup after loading the view.

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! QNMainTimeViewCell
        cell.frame = CGRectMake(0, 0, Utility.kWidth, 80)
        cell.changeUI()
        return cell

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
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
