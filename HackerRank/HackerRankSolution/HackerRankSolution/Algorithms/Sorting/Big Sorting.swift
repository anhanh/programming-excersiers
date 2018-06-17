//
//  Big Sorting.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/16/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation

//class Test {
//
//    func bigSorting(unsorted: [String]) -> [String] {
//        /*
//         * Write your code here.
//         */
//        var arr = unsorted
//
//        for i in 0..<arr.count {
//            for j in i+1..<arr.count {
//                if (Int(arr[i])! > Int(arr[j])!) {
//                    let tmp = arr[i]
//                    arr[i] = arr[j]
//                    arr[j] = tmp
//                }
//            }
//        }
//
//        return arr
//    }
//
//    func runTest() {
//
//        print("Enter input")
//
//
//        let a = Int(readLine()!)!
//        var array = [String]()
//
//        for i in 0..<a {
//            print("Enter \(i+1) number")
//            let b = readLine()!
//            array.append(b)
//        }
//
//        let ar = bigSorting(unsorted: array)
//
//        for i in 0..<ar.count {
//            print(ar[i])
//        }
//
//
//    }
//}


func bigSorting(unsorted: [String]) -> [String] {
    /*
     * Write your code here.
     */
    var arr = unsorted
    
    for i in 0..<arr.count {
        for j in i+1..<arr.count {
            if (Int(arr[i])! > Int(arr[j])!) {
                let tmp = arr[i]
                arr[i] = arr[j]
                arr[j] = tmp
            }
        }
    }
    
    return arr
    
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

let unsorted: [String] = AnyIterator{ readLine() }.prefix(n).map {
    $0
}

guard unsorted.count == n else { fatalError("Bad input") }

let result = bigSorting(unsorted: unsorted)

fileHandle.write(result.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)



