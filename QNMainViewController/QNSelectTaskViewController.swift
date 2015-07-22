//
//  QNSelectTaskViewController.swift
//  QNTimeWork
//
//  Created by 研究院01 on 15/7/20.
//  Copyright (c) 2015年 Loser. All rights reserved.
//

import UIKit

class QNSelectTaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        

        // Do any additional setup after loading the view.
    }
    
    func setUI(){
        navigationController?.navigationBarHidden = false
        view.backgroundColor = UIColor.whiteColor()
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
