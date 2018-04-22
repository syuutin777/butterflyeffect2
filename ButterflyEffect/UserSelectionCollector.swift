//
//  UserSelectionCollector.swift
//  ButterflyEffect
//
//  Created by syuutin on 2018/04/20.
//  Copyright © 2018年 syuutin. All rights reserved.
//

import Foundation
import IGListKit

final class UserSelectionController: ListSectionController {
    
    var user: User?
    
    override func numberOfItems() -> Int {
        return 1
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width, height: 100)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let user = self.user else {
            fatalError("user is nil.")
        }
        let cell = collectionContext!.dequeueReusableCell(of: UserCollectionViewCell.self, for: self, at: index) as! UserCollectionViewCell;
        // let cell = collectionContext!.dequeueReusableCell(withNibName: "cell", bundle: nil, for: self, at: index) as! UserCollectionViewCell
       // let cell = collectionContext?.dequeueReusableCell(withNibName:"UserCollectionViewCell", bundle: nil, for: self, at: index) as! UserCollectionViewCell
        
        
       // cell.commentLabel?.text = "「" + user.comment + "」とコメントしました。"//"\(user.id)さんが「\(user.comment)」とコメントしました。"
      
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.user = object as? User
    }
    
    override func didSelectItem(at index: Int) {}
}

