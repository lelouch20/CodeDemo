//
//  27-RemoveElement.swift
//  CodeDemo
//
//  Created by Firo on 2019/11/27.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution27 {
    
    // 16ms
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        if nums.count > 0 {
            
            var count = 0
            for (index, num) in nums.enumerated() {
                
                if num == val {
                    
                    nums.remove(at: index - count)
                    count = count + 1
                    
                }
                
            }
            
        }
        
        return nums.count
        
    }
    
    // 8ms
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
        
        nums = nums.filter { $0 != val }
        
        return nums.count
        
    }
    
    // 8ms
    func removeElement3(_ nums: inout [Int], _ val: Int) -> Int {
        
        var count = 0
        for i in 0..<nums.count {
            
            if nums[i - count] == val {
                nums.remove(at: i - count)
                count = count + 1
            }
            
        }
        
        return nums.count
        
    }
    
}
