//
//  ReverseInteger.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/2.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution7 {
    func reverse(_ x: Int) -> Int {
        
        var result:Int = 0
        
        var rest = Int(fabs(Double(x)))
        
        let str = "\(rest)"
        var length: Int = str.count
    
        
        while true  {
            
            if rest == 0 {
                break
            }
            
            let x = rest % 10
            
            length = length - 1
            result =  x * Int(pow(10.0, Double(length))) + result
            
            rest = rest / 10
            
        }
        
        result = x > 0 ? result : -result
        
        if result > (1<<Int(31)) - 1 || result < -(1 << Int(31)) {
            return 0
        }
        
        return result
    }
}
