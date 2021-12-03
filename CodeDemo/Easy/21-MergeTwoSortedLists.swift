//
//  21-MergeTwoSortedLists.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/24.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution21 {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil {
            return l2
        }
        
        if l2 == nil {
            return l1
        }
        
        var list1 = [Int]()
        var node1 = l1
        while node1 != nil {
            
            list1.append(node1!.val)
            node1 = node1!.next
        }
        
        var list2 = [Int]()
        var node2 = l2
        while node2 != nil {
            
            list2.append(node2!.val)
            node2 = node2!.next
        }
        
        var list = list1 + list2
        for i in 0..<list.count {
            for j in i+1..<list.count {
                if list[i] > list[j] {
                    let temp = list[i]
                    list[i] = list[j]
                    list[j] = temp
                }
            }
        }
        
        let resultNode = ListNode.init(list.first!)
        
        var node: ListNode = resultNode
        for i in 1..<list.count {
        
            let currentNode = ListNode.init(list[i])
            node.next = currentNode
            node = currentNode
            
        }
        
        return resultNode
    }
}
