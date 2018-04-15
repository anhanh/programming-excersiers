//
//  A Very Big Sum.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/15/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation


class Test {
    
    
    func aVeryBigSum(n: Int, ar: [Int]) -> Int {
        
        var result = 0
        
        for i in 0..<ar.count {
           result = result + ar[i]
        }
        
        return result;
        
    }

    
    func runTest() {
        
        print("Enter array number")
        let number = Int(readLine()!)!

        var array = [Int]()
        
        for i in 0..<number {
            print("Enter \(i+1) number")
            let b = Int(readLine()!)!
            array.append(b)
        }
        
        let result = aVeryBigSum(n: number, ar: array)
        print(result)

    }
}
