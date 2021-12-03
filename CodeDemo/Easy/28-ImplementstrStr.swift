//
//  28-ImplementstrStr.swift
//  CodeDemo
//
//  Created by Firo on 2019/11/27.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution28 {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if needle == "" {
            
            return 0
            
        }
        
        if haystack.count == needle.count {
            if haystack == needle {
                return 0
            } else {
                return -1
            }
        }
        
        if !haystack.contains(needle) {
            return -1
        }
        
        if let range = haystack.range(of: needle) {
            
            return haystack.distance(from: haystack.startIndex,
                                     to: range.lowerBound)
            
        }
        return -1

    }
}
