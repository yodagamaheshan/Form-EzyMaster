//
//  TeacherCourse.swift
//  StackOverFlow-AnswerTests
//
//  Created by Heshan Yodagama on 2020-11-24.
//

import XCTest
@testable import StackOverFlow_Answer

class TeacherCourseTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testSEOSection() {
        let teacherCourse = TeacherCourse(title: "", shortDescription: "", description: "", subCategory: nil, level: nil, courseType: .live, classRoomType: nil, scheduleTitle: "", group: .once, courseDuration: nil, startDay: nil, startDate: nil, startTime: nil, endTime: nil, languageMadeIn: nil, isTopCourse: false, requirements: [], outComes: [], isFreeCourse: false, price: nil, discountFlag: false, discountedPrice: nil, courseOverViewProvider: nil, overViewUrl: "", thumbnail: nil, metaKeywords: "meta keyword", metaDescription: "meta description", courseID: "")
        let isValiedSEO = teacherCourse.isValiedSEO
        XCTAssertTrue(isValiedSEO)
    }
    
    func testSEOEmpty() {
        let teacherCourse = TeacherCourse(title: "", shortDescription: "", description: "", subCategory: nil, level: nil, courseType: .live, classRoomType: nil, scheduleTitle: "", group: .once, courseDuration: nil, startDay: nil, startDate: nil, startTime: nil, endTime: nil, languageMadeIn: nil, isTopCourse: false, requirements: [], outComes: [], isFreeCourse: false, price: nil, discountFlag: false, discountedPrice: nil, courseOverViewProvider: nil, overViewUrl: "", thumbnail: nil, metaKeywords: "", metaDescription: "", courseID: "")
        let isValiedSEO = teacherCourse.isValiedSEO
        XCTAssertFalse(isValiedSEO)
    }
    
    func testPerformanceExample() throws {
        
    }

}
