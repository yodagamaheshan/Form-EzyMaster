//
//  TeacherCourse.swift
//  StackOverFlow-AnswerTests
//
//  Created by Heshan Yodagama on 2020-11-24.
//

import XCTest
@testable import StackOverFlow_Answer

class TeacherCourseTests: XCTestCase {
    var course: TeacherCourse!

    override func setUp() {
        course = TeacherCourse(title: "title", shortDescription: "ShortDescription", description: "description", subCategory: .init(id: "www", code: "wsws", name: "wsws", parent: "wsw", slug: nil, dateAdded: nil, lastModified: nil, fontAwesomeClass: nil, thumbnail: nil, numberOfCourses: nil), level: .advanced, courseType: .live, classRoomType: .lecture, scheduleTitle: "Shedule title", group: .once, courseDuration: .fourYear, startDay: .friday, startDate: Date(), startTime: Date(), endTime: Date(), languageMadeIn: .english, isTopCourse: true, requirements: ["r1,r2"], outComes: ["o1", "o2"], isFreeCourse: false, price: 100, discountFlag: false, discountedPrice: 200, courseOverViewProvider: .html5, overViewUrl: "url", thumbnail: .init(""), metaKeywords: "jhb", metaDescription: "jhb", courseID: "jhb")
    }
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
