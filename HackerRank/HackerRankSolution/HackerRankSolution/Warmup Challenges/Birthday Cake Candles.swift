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

let fileName = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: fileName, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: fileName)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

guard let arTemp = readLine() else { fatalError("Bad input") }
let ar: [Int] = arTemp.split(separator: " ").map {
    if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arItem
    } else { fatalError("Bad input") }
}

guard ar.count == n else { fatalError("Bad input") }

let result = birthdayCakeCandles(n: n, ar: ar)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
