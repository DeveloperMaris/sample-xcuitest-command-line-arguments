//
//  NameUITests.swift
//  NameUITests
//
//  Created by Maris Lagzdins on 08/08/2022.
//

import XCTest

class NameUITests: XCTestCase {
    func testName() throws {
        guard let name = ProcessInfo.processInfo.environment["name"] else {
            XCTFail("Parameter 'name' must be provided from Terminal as an environment variable.")
            return
        }

        let app = XCUIApplication()
        app.launchEnvironment["nickname"] = name
        app.launch()

        XCTAssertTrue(app.staticTexts["Hello, \(name)"].exists)
    }
}
