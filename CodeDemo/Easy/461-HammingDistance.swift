//
//  461-HammingDistance.swift
//  CodeDemo
//
//  Created by Firo on 2019/10/2.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation


class Solution461 {
    //常规
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        
        let xStr = String(x, radix: 2)
        let yStr = String(y, radix: 2)
        
        let value = xStr.count - yStr.count
        
        var result: Int = 0
        
        for index in 0..<(value < 0 ? yStr.count : xStr.count) {
            
            var charx: Character = "0"
            var chary: Character = "0"
            if index < xStr.count {
                charx = xStr[xStr.index(xStr.endIndex, offsetBy: -index - 1)]
            }
            if index < yStr.count {
                chary = yStr[yStr.index(yStr.endIndex, offsetBy: -index - 1)]
            }
            if charx != chary {
                result = result + 1
            }
            
        }
        
        return result
    }
    
    //简洁，高效
    func hammingDistance2(_ x: Int, _ y: Int) -> Int {
        
        let result = String(x ^ y, radix: 2)
        let list = "\(result)".filter { $0 == "1" }
        
        return list.count
        
//        return  ("\(String(x^y, radix: 2))".filter{ $0 == "1" }).count
        
    }
}

