//
//  AddTwoNumbers.swift
//  exam
//
//  Created by Firo on 2019/8/15.
//  Copyright © 2019 Firo. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class AddTwoNumbersSolution {
    
    //迭代
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var currentNode1 = l1!
        var currentNode2 = l2!
        
        var first = currentNode1.val + currentNode2.val
        var upStep = 0;
        if first / 10 > 0 {
            upStep = 1
            first = first % 10
        }
        let resultNode = ListNode.init(first)
        var currentNode = resultNode
        while true {
            var value1:Int = 0
            var value2:Int = 0
            var isHasNext = false
            if let next = currentNode1.next {
                value1 = next.val
                isHasNext = true
                currentNode1 = next
            }
            if let next = currentNode2.next {
                value2 = next.val
                isHasNext = true
                currentNode2 = next
            }
            if !isHasNext, upStep == 0 {
                break
            }
            var value = value1 + value2 + upStep
            upStep = 0
            if value / 10 > 0 {
                value = value % 10
                upStep = 1
            }
            let node = ListNode.init(value)
            currentNode.next = node
            currentNode = node
            
        }
        
        return resultNode
    }
    
    //递归
    func addTwoNumbers2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        return nextNode(l1, l2, 0)
        
    }
    
    
    func nextNode(_ l1: ListNode?, _ l2: ListNode?, _ upStep: Int) -> ListNode? {
        
        if l1 == nil, l2 == nil, upStep == 0 {
            return nil
        }
        
        var v1 = 0
        var v2 = 0
        
        if let node = l1 {
            v1 = node.val
        }
        if let node = l2 {
            v2 = node.val
        }
        let v = v1 + v2 + upStep
        
        var node: ListNode?
        if v / 10 > 0 {
            node = ListNode.init(v % 10)
            node?.next = nextNode(l1?.next, l2?.next, 1)
        } else {
            node = ListNode.init(v)
            node?.next = nextNode(l1?.next, l2?.next, 0)
        }
        return node
    }
}
