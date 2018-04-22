//
//  File.swift
//  ButterflyEffect
//
//  Created by syuutin on 2018/04/20.
//  Copyright © 2018年 syuutin. All rights reserved.
//

import UIKit
import IGListKit

class User {
    let id: Int
    let comment: String
    
    init(id: Int, comment: String) {
        self.id = id
        self.comment = comment
      
    }
}

extension User: ListDiffable {
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        if let  object = object as? User {
            return id == object.id
        }
        return false
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return id as NSObjectProtocol
    }
    
}


