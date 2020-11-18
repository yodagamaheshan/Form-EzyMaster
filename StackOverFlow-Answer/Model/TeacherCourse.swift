//
//  TeacherCourse.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-18.
//

import SwiftUI

//with string i have put "" instead of optional(nil) to esyness of checking
// if [String] is empty then its [] instead of nil
struct TeacherCourse {
    var title: String = ""
    var shortDescription: String = ""
    var description: String = ""
    var subCategory: Category?
    var level: Level?
    var courseType: CourseType = .local
    var classRoomType: ClassRoomType?
    var scheduleTitle: String = ""
    var group: Group = .once
    var courseDuration: Duration?
    var startDay: Day?
    var startDate: Date?
    var startTime: Date?
    var endTime: Date?
    var languageMadeIn: Language?
    var isTopCourse: Bool = false
    var requirements: [String] = []
    var outComes: [String] = []
    var isFreeCourse: Bool = false
    var price: Int?
    var discountFlag: Bool = false
    var discountedPrice: Int? = nil
    var courseOverViewProvider: OverViewProvider?
    var overViewUrl: String = ""
    var thumbnail: Image?
    var metaKeywords: String = ""
    var metaDescription: String = ""
    var courseID: String = ""
    //id only available when user going to update
}
