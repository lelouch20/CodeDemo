//
//  9-PalindromeNumber.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/2.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution9 {
    
    //常规版
    func isPalindrome(_ x: Int) -> Bool {
        
        if x < 0 {
            return false
        }
        
        var reverse: Int = 0
        var rest = x
        
        let str = "\(x)"
        var length: Int = str.count
        
        while true {
            
            length = length - 1
            reverse = rest % 10 * Int(pow(10.0, Double(length))) + reverse
            rest = rest / 10
            if rest == 0 {
                break
            }
        
        }
        
        return reverse == x
    }
    
    //超简洁版
    func isPalindrome2(_ x: Int) -> Bool {
        
        return "\(x)" == String("\(x)".reversed())
    }
    
}
