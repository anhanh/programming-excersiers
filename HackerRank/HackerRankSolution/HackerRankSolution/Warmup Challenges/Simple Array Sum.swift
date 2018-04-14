//
//  Simple Array Sum.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/14/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation

class Test {
    
    func runTest() {
        
        print("Enter input")
        
        
        let a = Int(readLine()!)!
        var array = [Int]()
        var sum = 0
        
        for i in 0..<a {
            print("Enter \(i+1) number")
            let b = Int(readLine()!)!
            array.append(b)
        }
        
        for i in 0..<array.count {
            sum += array[i]
        }

        
        print(sum)
        
    }
}

