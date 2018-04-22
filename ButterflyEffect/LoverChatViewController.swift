//
//  LoverChatViewController.swift
//  ButterflyEffect
//
//  Created by syuutin on 2018/04/16.
//  Copyright © 2018年 syuutin. All rights reserved.
//

import UIKit
import XLPagerTabStrip


class LoverChatViewController: UIViewController, IndicatorInfoProvider {

    var itemInfo: IndicatorInfo = "チャット"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
