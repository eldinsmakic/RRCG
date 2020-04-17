//
//  CodeGeneratorTest.swift
//  RRCGTests
//
//  Created by eldin smakic on 16/04/2020.
//  Copyright © 2020 eldin smakic. All rights reserved.
//
@testable import RRCG
import XCTest

class CodeGeneratorTest: XCTestCase {

    var codeGenerator: CodeGenerator!

    func getCodeGenerator() -> CodeGenerator
    {
        return CodeGenerator(fetchCode: self.getFetchCode())
    }

    func getFetchCode() -> FetchCode
    {
        return FetchCodeFile(fileName: "ressources/data")
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.codeGenerator = self.getCodeGenerator()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsAPrecode()
    {
        XCTAssertTrue(self.codeGenerator.isAPrecode(precode: "A245"))
        XCTAssertFalse(self.codeGenerator.isAPrecode(precode: "hello"))
        XCTAssertFalse(self.codeGenerator.isAPrecode(precode: "AB23"))
        XCTAssertFalse(self.codeGenerator.isAPrecode(precode: "A°°P2"))
        XCTAssertTrue(self.codeGenerator.isAPrecode(precode: "a245"))
        XCTAssertTrue(self.codeGenerator.isAPrecode(precode: " a245 "))
        XCTAssertTrue(self.codeGenerator.isAPrecode(precode: " a245"))
        XCTAssertTrue(self.codeGenerator.isAPrecode(precode: " a245    "))
    }

    func testGenerateCodeFromPrecode()
    {
        XCTAssertEqual("0070", self.codeGenerator.generateCodeFromPrecode("A100"))
        XCTAssertEqual("0060", self.codeGenerator.generateCodeFromPrecode("Z999"))
    }

    func testPurifyPrecode()
    {
        XCTAssertEqual("A124", self.codeGenerator.purrifyPrecode(precode: "  a124  "))
        XCTAssertEqual("A124", self.codeGenerator.purrifyPrecode(precode: "A124"))
        XCTAssertEqual("A124", self.codeGenerator.purrifyPrecode(precode: "a124"))
        XCTAssertNotEqual("A124", self.codeGenerator.purrifyPrecode(precode: "a125"))
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
