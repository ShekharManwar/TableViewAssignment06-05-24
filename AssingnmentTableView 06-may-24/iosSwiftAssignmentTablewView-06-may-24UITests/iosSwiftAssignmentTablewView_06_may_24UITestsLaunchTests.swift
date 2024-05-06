//
//  iosSwiftAssignmentTablewView_06_may_24UITestsLaunchTests.swift
//  iosSwiftAssignmentTablewView-06-may-24UITests
//
//  Created by Shraddha Manwar on 06/05/24.
//

import XCTest

final class iosSwiftAssignmentTablewView_06_may_24UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
