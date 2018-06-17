//
//  Intro to Tutorial Challenges.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/16/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation

class Test {
    
    func runTest() {
        
        print("Enter input")
        
        let v = Int(readLine()!)!

        let n = Int(readLine()!)!
        var array = [Int]()
        
        for i in 0..<n {
            print("Enter \(i+1) number")
            let b = Int(readLine()!)!
            array.append(b)
        }
        
        for i in 0..<array.count {
            if (v == array[i]) {
                print(i)
                break
            }
        }
        
    }
}

