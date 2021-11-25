//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by Begg, Alistair (AMM) on 16/11/2021.
//

import Foundation

class Sorting {
    func bubbleSort(_ input: [Int]) -> [Int] {
        if input.count == 0 {
            return input
        } else {
            var array = input
            for _ in 0..<array.count {
              for j in 1..<array.count {
                if array[j] < array[j-1] {
                  let temp = array[j-1]
                  array[j-1] = array[j]
                  array[j] = temp
                }
              }
            }
            return array
        }
    }
    
    func quickSort(
}
