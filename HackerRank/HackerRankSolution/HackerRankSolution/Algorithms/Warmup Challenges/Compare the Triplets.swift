//
//  Compare the Triplets.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/14/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation

class Test {
    
    
    func solve(a0: Int, a1: Int, a2: Int, b0: Int, b1: Int, b2: Int) -> [Int] {
        
        var a = 0
        var b = 0
        

        if (a0>b0) {a = a + 1;}
        else if (a0<b0) {b = b + 1;}

        if (a1>b1) {a = a + 1;}
        else if (a1<b1) {b = b + 1;}

        if (a2>b2) {a = a + 1;}
        else if (a2<b2) {b = b + 1;}

        return [a,b]
    }
    
    
    func runTest() {
        
        var array = [Int]()
        
        for i in 0..<6 {
            print("Enter \(i+1) number")
            let b = Int(readLine()!)!
            array.append(b)
        }
        
      var c =  solve(a0: array[0], a1: array[1], a2: array[2], b0: array[3], b1: array[4], b2: array[5])

    }
    
}
