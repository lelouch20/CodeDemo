//
//  13-RomanToInteger.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/2.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution13 {
    func romanToInt(_ s: String) -> Int {
        
        let map:[Character: Int] = ["I": 1,
                                    "V": 5,
                                    "X": 10,
                                    "L": 50,
                                    "C": 100,
                                    "D": 500,
                                    "M": 1000]
        
        var result:Int = 0
        var last:Int = 1001
        for char in s {
            
            let strInt = map[char]!
            if strInt > last {
                result = result - 2 * last
            }
            result = result + strInt
            last = strInt
            
        }
        
        return result
    }
}
