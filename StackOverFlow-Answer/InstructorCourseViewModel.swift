//
//  InstructorCourseViewModel.swift
//  Ezymaster
//
//  Created by Heshan Yodagama on 2020-11-16.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import SwiftUI

class InstructorCourseViewModel:  ObservableObject{
    @Published var course: TeacherCourse = .init()
    
    func submit() {
        
    }
}

//MARK: basic section
extension InstructorCourseViewModel {
    var subCategoryName: String? {
        course.subCategory?.name?.capitalized
    }
    var levelValue: String? {
        course.level?.rawValue.capitalized
    }
    var isLiveCourse: Bool {
        set{course.courseType = newValue ? CourseType.live:.local}
        get{course.courseType == .live}
    }
    var isPerWeek: Bool {
        course.group == .perWeek
    }
    var courseDurationValue: String? {
        course.courseDuration?.getTitle()
    }
    //FIXME:
    var startDay: String? {
        nil
    }
    var startDate: String? {
        nil
    }
}

//MARK: requirenments section
extension InstructorCourseViewModel {
    var requirements: String {
        set {course.requirements = newValue.components(separatedBy: ",")}
        get {course.requirements.joined(separator: ",")}
    }
}

//MARK: Outcomes section
extension InstructorCourseViewModel {
    var outcomes: String {
        set { course.outComes = newValue.components(separatedBy: ",")}
        get {course.outComes.joined(separator: ",")}
    }
}
