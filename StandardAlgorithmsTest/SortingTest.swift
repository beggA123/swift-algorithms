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
    
    func testBubbleSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testArray = [1,3,6,2,2]
        //act
        measure {
            _ = sorting.bubbleSort(testArray)
        }
    }
}
