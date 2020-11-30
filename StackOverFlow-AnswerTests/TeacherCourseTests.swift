//
//  TeacherCourse.swift
//  StackOverFlow-AnswerTests
//
//  Created by Heshan Yodagama on 2020-11-24.
//

import XCTest
import SwiftUI
@testable import StackOverFlow_Answer

class TeacherCourseTests: XCTestCase {
    var course: TeacherCourse!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testValiedCourse() {
        let isValied = course.isValiedCourse
        XCTAssertTrue(isValied, "Hesh: Course is not valied")
    }
        
    func testPerformanceExample() throws {
        
    }

}
