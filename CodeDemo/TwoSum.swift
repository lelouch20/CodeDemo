//
//  TwoSum.swift
//  exam
//
//  Created by Firo on 2019/8/15.
//  Copyright © 2019 Firo. All rights reserved.
//

import Foundation

class TwoSumSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numDic = [Int: Int]()
        
        for i in 0..<nums.count {
            numDic.updateValue(i, forKey: nums[i])
        }
        
        var resultList = [Int]()
        for i in 0..<nums.count {
            let num = nums[i]
            let result = target - num
            if numDic.keys.contains(result) {
                let numDicIndex = numDic[result]!
                if numDicIndex != i {
                    resultList.append(i)
                    if result == num {
                        resultList.append(numDicIndex)
                    }
                }
            }
        }
        return resultList
    }
}
