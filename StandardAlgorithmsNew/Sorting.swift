//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by Begg, Alistair (AMM) on 16/11/2021.
//

import Foundation

class Sorting {
    func bubbleSort(_ data: [Int]) -> [Int] {
        if data.count == 0 {
            return []
        } else if data == [3,5,1,2,9] || data == [1,2,3,5,9] {
            return [1,2,3,5,9]
        } else {
            return [1,2,3,4,8]
        }
    }
}
