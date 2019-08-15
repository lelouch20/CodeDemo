//
//  main.swift
//  exam
//
//  Created by Firo on 2019/3/5.
//  Copyright © 2019 Firo. All rights reserved.
//

import Foundation


let listNode1 = ListNode.init(3)
let listNode2 = ListNode.init(4)
listNode1.next = listNode2

let listNode3 = ListNode.init(2)
let listNode4 = ListNode.init(6)
let listNode5 = ListNode.init(7)
listNode4.next = listNode5
listNode3.next = listNode4

let node = AddTwoNumbersSolution().addTwoNumbers(listNode1, listNode3)
print("\(node!)")

