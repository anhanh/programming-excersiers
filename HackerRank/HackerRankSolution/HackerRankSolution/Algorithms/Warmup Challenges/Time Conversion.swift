//
//  Time Conversion.swift
//  HackerRankSolution
//
//  Created by Tuan Anh on 4/15/18.
//  Copyright © 2018 Explorest Inc. All rights reserved.
//

import Foundation


func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */
    var arr = s.components(separatedBy: ":")
    
    var hour = arr[0]
    let minute = arr[1]
    var second = arr[2]

    var h = Int(hour)!
    
    if (second.contains("AM")) {
        second =  second.replacingOccurrences(of: "AM", with: "")
        if (h == 12) {hour = "00"}
    } else { //PM
        if (h == 12) {h = 12}
        else {h = 12 + h}
        hour = String(h)
        second =  second.replacingOccurrences(of: "PM", with: "")
    }
    

    return hour + ":" + minute + ":" + second
    
}


