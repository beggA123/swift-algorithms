//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Begg, Alistair (AMM) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [3,5,1,2,9, expected: [1,2,3,5,9]),
                         (input: [1,3,2,4,5], expected: [1,2,3,4,5])]
        //act
        for testCase in testCases {
            let actual = sorting.bubbleSort(data)
        }
        //assert
    }

    func testBubbleSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithSortedIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,2,3,5,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithDifferentIntegerArrayReturnsSortedDifferentIntegerArray() {
        //arrange
        let sorting = Sorting()
        let data = [2,4,1,3,8]
        let expected = [1,2,3,4,8]
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
}
