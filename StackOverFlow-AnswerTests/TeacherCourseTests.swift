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
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testIsLiveOnceCourse() {
        let onceCourse = TeacherCourse(title: "hgv", shortDescription: "jjh", description: "jhbjh", subCategory: .init(id: "swsw", code: "", name: "", parent: "", slug: "", dateAdded: "", lastModified: "", fontAwesomeClass: "", thumbnail: "", numberOfCourses: 2), level: .advanced, courseType: .live, classRoomType: .lecture, scheduleTitle: "jhbjhb", group: .once, courseDuration: .fourYear, startDay: .friday, startDate: Date(), startTime: Date(), endTime: Date(), languageMadeIn: .english, isTopCourse: false, requirements: ["kjn","hb"], outComes: ["lklk", "jnjn"], isFreeCourse: false, price: 200, discountFlag: false, discountedPrice: 200, courseOverViewProvider: .html5, overViewUrl: "url", thumbnail: Image("n"), metaKeywords: "bbnn", metaDescription: "nnnnn", courseID: " mjhbjh")
        let isValied = onceCourse.isValiedCourse
        XCTAssertTrue(isValied)
    }
    
    func testIsLivePerWeekCourseFalse() {
        let onceCourse = TeacherCourse(title: "hgv", shortDescription: "jjh", description: "jhbjh", subCategory: .init(id: "swsw", code: "", name: "", parent: "", slug: "", dateAdded: "", lastModified: "", fontAwesomeClass: "", thumbnail: "", numberOfCourses: 2), level: .advanced, courseType: .live, classRoomType: .lecture, scheduleTitle: "jhbjhb", group: .perWeek, courseDuration: nil, startDay: nil, startDate: Date(), startTime: Date(), endTime: Date(), languageMadeIn: .english, isTopCourse: false, requirements: ["kjn","hb"], outComes: ["lklk", "jnjn"], isFreeCourse: false, price: 200, discountFlag: false, discountedPrice: 200, courseOverViewProvider: .html5, overViewUrl: "url", thumbnail: Image("n"), metaKeywords: "bbnn", metaDescription: "nnnnn", courseID: " mjhbjh")
        let isValied = onceCourse.isValiedCourse
        XCTAssertFalse(isValied)
    }
    func testPerformanceExample() throws {
        
    }

}
