//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  CodeDemo
//
//  Created by Firo on 2019/8/15.
//  Copyright © 2019 firo. All rights reserved.
//

import Foundation

class Solution3 {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var result = ""
        var maxLength = 0

        for char in s {
            if result.contains(char) {
                maxLength = max(maxLength, result.count)
                let index = result.firstIndex(of: char)
                result = result.replacingCharacters(in: result.startIndex...index!, with: "")
            }
            result.append(char)
        }
        
        return max(maxLength, result.count)
    }
    
    func lengthOfLongestSubstring2(_ s: String) -> Int {
        
        var result = [Character]()
        var maxLength = 0
        for char in s {
            if result.contains(char) {
                let index = result.firstIndex(of: char)
                result = Array(result[index!...result.endIndex])
            }
            result.append(char)
            maxLength = max(maxLength, result.count)
        }
        
        return maxLength
    }
}
