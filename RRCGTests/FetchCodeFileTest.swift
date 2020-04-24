//
//  FetchCodeFileTest.swift
//  RRCGTests
//
//  Created by eldin smakic on 17/04/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//
@testable import RRCG
import XCTest

class FetchCodeFileTest: XCTestCase {
    var fetchCodeFile: FetchCodeFile!

    func getFetchCodeFile() -> FetchCodeFile
    {
        return FetchCodeFile(fileName: "ressources/data")
    }

    override func setUp() {
        self.fetchCodeFile = self.getFetchCodeFile()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetData()
    {
        let result = self.fetchCodeFile.getData()
        XCTAssertTrue(result.count > 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
