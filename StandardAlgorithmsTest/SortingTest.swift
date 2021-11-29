//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Begg, Alistair (AMM) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        let testCases = [([3,5,1,2,9], [1,2,3,5,9]),
                         ([1,3,2,4,5], [1,2,3,4,5]),
                         ([Int()], [Int()]),
                         ([1,2,3,4,5], [1,2,3,4,5])]
        //act
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.0)
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
    }
    
    func testBubbleSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testArray = [1,3,6,2,2]
        //act
        measure {
            _ = sorting.bubbleSort(testArray)
        }
    }
    
    func testQuickSortWithIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        let testCases = [([3,5,1,2,9], [1,2,3,5,9]),
                         ([1,3,2,4,5], [1,2,3,4,5]),
                         ([Int()], [Int()]),
                         ([1,2,3,4,5], [1,2,3,4,5])]
        //act
        for testCase in testCases {
            let actual = sorting.quickSort(testCase.0)
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
    }
    
    func testQuickSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testArray = [1,3,6,2,2]
        //act
        measure {
            _ = sorting.quickSort(testArray)
        }
    }
    
    func testInsertionSortWithIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        let testCases = [([3,5,1,2,9], [1,2,3,5,9]),
                         ([1,3,2,4,5], [1,2,3,4,5]),
                         ([Int()], [Int()]),
                         ([1,2,3,4,5], [1,2,3,4,5])]
        //act
        for testCase in testCases {
            let actual = sorting.insertionSort(testCase.0)
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
    }
    
    func testInsertionSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testArray = [1,3,6,2,2]
        //act
        measure {
            _ = sorting.insertionSort(testArray)
        }
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        let testCases = [([3,5,1,2,9], [1,2,3,5,9]),
                         ([1,3,2,4,5], [1,2,3,4,5]),
                         ([Int()], [Int()]),
                         ([1,2,3,4,5], [1,2,3,4,5])]
        //act
        for testCase in testCases {
            let actual = sorting.mergeSort(testCase.0)
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
    }
    
    func testMergeSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testArray = [1,3,6,2,2]
        //act
        measure {
            _ = sorting.mergeSort(testArray)
        }
    }
    
    func testLinearSearchWithIntegerArrayFindsNumberToFindAndReturnsTrueOrReturnsFalse() {
        //arrange
        let searching = Searching()
        let testCases = [([3,5,1,2,9], 1, true),
                         ([1,3,2,4,5], 3, true),
                         ([Int()], 4, false),
                         ([1,2,3,4,5], 7, false)]
        //act
        for testCase in testCases {
            let actual = searching.linearSearch(testCase.0, testCase.1)
            //assert
            XCTAssertEqual(actual, testCase.2)
        }
    }
}
