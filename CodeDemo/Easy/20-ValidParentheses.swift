//
//  20-ValidParentheses.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/24.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution20 {
    
    func isValid(_ s: String) -> Bool {
        
        if s.count % 2 != 0 {
            return false
        }
        
        let map: [Character: Int] = ["(": 1,
                                     ")": -1,
                                     "[": 2,
                                     "]": -2,
                                     "{": 3,
                                     "}": -3]
        
        var ss = [Int]()
        for char in s {
            ss.append(map[char]!)
        }
        
        var left = [Int]()
        for i in 0..<ss.count {
            
            let value = ss[i]
            if value > 0 {
                
                left.append(value)
                
            } else {
                
                if left.count == 0 {
                    
                    return false
                    
                }
                if left.last! + value == 0 {
                    
                    left.removeLast()
                    
                } else {
                    
                    return false
                    
                }
            }
        }
        if left.count == 0 {
            
            return true
            
        }
        
        return false
    }
    
    //牛b的想法，但效率很低
    func isValid2(_ s: String) -> Bool {
        
        var str = s
        
        while str.contains("()") || str.contains("[]") || str.contains("{}") {
            
            str = str.replacingOccurrences(of: "()", with: "")
            str = str.replacingOccurrences(of: "[]", with: "")
            str = str.replacingOccurrences(of: "{}", with: "")
            
        }
        if str == "" {
            return true
        }
        return false
    }
    
}
