//
//  Birthday Cake Candles.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/15/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation

func birthdayCakeCandles(n: Int, ar: [Int]) -> Int {

    var count = 0
    var max = 0

    for i in 0..<ar.count {
        if (max < ar[i]) {
            max = ar[i]
            count = 1
        } else if (max == ar[i]) {
            count = count + 1;
        }
    }
    return count
    
}


