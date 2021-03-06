//
//  Mini-Max Sum.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/15/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation

func miniMaxSum(arr: [Int]) -> Void {

    var min = arr[0] + arr[1] + arr[2] + arr[3]
    var max = 0
    var sum = 0
    
    for i in 0..<arr.count {
        sum = arr[0] + arr[1] + arr[2] + arr[3] + arr[4] - arr[i]
        if (sum < min) {min = sum}
        else if (sum > max) {max = sum}
    }
    
    print("\(min) \(max)")
    
}


