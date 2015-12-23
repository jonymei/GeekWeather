//
//  ShellCoreTest.swift
//  GeekWeather
//
//  Created by 梅俊 on 15/12/17.
//  Copyright © 2015年 RangerStudio. All rights reserved.
//

import XCTest
@testable import GeekWeather

class ShellCoreTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAbsPath() {
        let shellCore = ShellCore.defaultShellCore
        shellCore.workPath = "~/hello/.././world/doc/../release"
        do {
            let absPath = try shellCore.getAbsPath(shellCore.workPath);
            let expect = "~/world/release"
            XCTAssertTrue(absPath == expect)
        } catch {
            XCTFail()
            print("thrown error")
        }
    }
    
}
