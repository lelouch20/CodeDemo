//
//  617-MergeTwoBinaryTrees.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/2.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution617 {
    
    //常规版
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        
        if t1 == nil, t2 == nil {
            return nil
        }
        var result: Int = 0
        
        let node = TreeNode.init(result)
        
        if let node = t1 {
            result = result + node.val
        }
        if let node = t2 {
            result = result + node.val
        }

        node.left = mergeTrees(t1?.left, t2?.left)
        node.right = mergeTrees(t1?.right, t2?.right)
        
        return node
    }
    
    // 高效简洁版
    func mergeTrees2(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        
        if t1 != nil,
            t2 != nil {
            
            t1!.val += t2!.val
            t1!.left = mergeTrees(t1!.left, t2!.left)
            t1!.right = mergeTrees(t1!.right, t2!.right)
            
        }
        
        return t1 == nil ? t2 : t1
        
    }
    
}
