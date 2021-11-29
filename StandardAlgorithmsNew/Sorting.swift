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
    
    func quickSort(_ array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
          } else {
            var finalArray: [Int] = []
            let pivot = array[0]
            var leftArray: [Int] = []
            var rightArray: [Int] = []
            for i in 1..<array.count {
              if array[i] < pivot {
                leftArray.append(array[i])
              } else {
                rightArray.append(array[i])
              }
            }
            finalArray.append(contentsOf: quickSort(leftArray))
            finalArray.append(pivot)
            finalArray.append(contentsOf: quickSort(rightArray))
            return finalArray
          }
    }
    
    func insertionSort(_ array: [Int]) -> [Int] {
        var sortedArray = array
        for index in 1..<sortedArray.count {
            var currentIndex = index
            while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] {
                sortedArray.swapAt(currentIndex - 1, currentIndex)
                currentIndex -= 1
            }
        }
        return sortedArray
    }
    
    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        var orderedArray: [Int] = []
        
        while leftIndex < left.count && rightIndex < right.count {
          let leftElement = left[leftIndex]
          let rightElement = right[rightIndex]

          if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
          } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
          } else {
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
          }
        }
        
        while leftIndex < left.count {
            orderedArray.append(left[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < right.count {
            orderedArray.append(right[rightIndex])
            rightIndex += 1
        }
        
        return orderedArray
    }
    
    func mergeSort(_ array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        } else {
            let middleIndex = array.count / 2
            let leftArray = mergeSort(Array(array[0..<middleIndex]))
            let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
            
            return merge(leftArray, rightArray)
        }
    }
}
