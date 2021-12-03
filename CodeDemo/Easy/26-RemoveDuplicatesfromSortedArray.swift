//
//  26-RemoveDuplicatesfromSortedArray.swift
//  CodeDemo
//
//  Created by Firo on 2019/11/12.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution26 {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var items: Set<Int> = []
        
        nums = nums.filter {
            
            items.insert($0).inserted == true
            
        }
        
        return nums.count
    }
    
    func removeDuplicates2(_ nums: inout [Int]) -> Int {

        var items: Set<Int> = []
        var count:Int = 0
        
        for (index, num) in nums.enumerated() {

            if items.contains(num) {

                nums.remove(at: index - count)
                count = count + 1

            } else {

                items.insert(num)
                
            }

        }
        
        return nums.count
        
    }
    
    // 性能最佳
    func removeDuplicates3(_ nums: inout [Int]) -> Int {
        
        if nums.count <= 1 {
            return nums.count
        }
        
        var currentIndex = 0
        
        for index in 0..<nums.count {
            
            let num = nums[index]
            if nums[index] != nums[currentIndex] {
                
                currentIndex = currentIndex + 1
                nums[currentIndex] = num
                
            }
            
        }
        
        return currentIndex + 1
        
    }
    
    
    
}
