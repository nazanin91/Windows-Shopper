//
//  Windows_ShopperTests.swift
//  Windows-ShopperTests
//
//  Created by Nazanin on 3/28/1397 AP.
//  Copyright © 1397 Nazanin. All rights reserved.
//

import XCTest

class Windows_ShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetHours(){
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
