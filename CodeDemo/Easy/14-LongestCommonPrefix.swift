//
//  14-LongestCommonPrefix.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/24.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution14 {
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        //判空
        if strs.count == 0 {
            return ""
        }
        var result = strs.first!
        for i in 1..<strs.count {
            let str = strs[i]
            //判空
            if str == "" {
                return ""
            }
            while !str.hasPrefix(result) {
                //每次移除最后一个字母
                result.removeLast()
                //判空
                if result == "" {
                    return ""
                }
            }
        }
        
        return result
    }
    
}
