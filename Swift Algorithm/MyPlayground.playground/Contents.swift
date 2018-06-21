//: Playground - noun: a place where people can play

import Cocoa

//Find First Recurring Character using dictionary
//Complexity = O(n)

var arr = ["A", "B", "C", "D", "B"]

var dic = [String:Int]()
for a in arr {
    if dic[a] != nil {
        print(a)
    }
    dic[a] = 1
}

