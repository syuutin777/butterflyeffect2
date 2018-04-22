//
//  LoverFineViewController.swift
//  ButterflyEffect
//
//  Created by syuutin on 2018/04/16.
//  Copyright © 2018年 syuutin. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import IGListKit

class LoverFindViewController: UIViewController, IndicatorInfoProvider{

    var itemInfo: IndicatorInfo = "恋人探し"
    
    
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    
    var data = [User(id: 1,comment: "アイウエ"),User(id: 2,comment: "かきくけ")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //collectionView.register(UINib(nibName: "UserCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "UserCollectionViewCell")
       // collectionView.register(UINib(nibName:"UserCollectionViewCell", bundle: nil), forCellWithReuseIdentifier:"cell")
        
       // collectionView.backgroundColor = UIColor.blue;
       // collectionView.frame  = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.dataSource = self
        adapter.collectionView?.register(UserCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.backgroundColor = UIColor.blue;
        collectionView.frame = view.bounds
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

extension LoverFindViewController: ListAdapterDataSource {
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return data as! [ListDiffable]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        /*if object is UserHistory {
            return UserHistorySectionController()
        } else if object is RecommendFeed {
            return RecommendFeedSectionController()
        } else {
            return FeedSectionController()
        }*/
        
        return UserSelectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}
