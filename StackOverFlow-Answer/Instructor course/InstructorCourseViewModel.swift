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
    
    //get from backend
    var subCategories: [CourseCategory] = []
}

//MARK: selectables
extension InstructorCourseViewModel {
    var allLevelSelectables: [String] {
        Level.allCases.map { $0.rawValue.capitalized }
    }
    var allSubCategorySelectables: [String] {
        subCategories.compactMap { $0.name?.capitalized }
    }
    var allClassRoomSelectables: [String] {
        ClassRoomType.allCases.map{ $0.rawValue }
    }
    var allCourseDurationSelectables: [String] {
        Duration.allCases.map{$0.getTitle()}
    }
    var allDaySelectables: [String] {
        Day.allCases.map{ $0.rawValue.capitalized }
    }
    //below to isLive stack
    var allLangyageSelectables: [String] {
        Language.allCases.map{ $0.rawValue.capitalized}
    }
    //Media-> Selectables
    var allOverViewProviders: [String] {
        OverViewProvider.allCases.map{$0.rawValue.capitalized}
    }
}


//MARK: basic section
extension InstructorCourseViewModel {
    var subCategoryName: String? {
        get{course.subCategory?.name?.capitalized}
        set{
            if let selectedName = newValue {
                course.subCategory = getSubCategory(for: selectedName.lowercased())
            }else {
                course.subCategory = nil
            }
        }
    }
    
    func getSubCategory(for selectedText: String) -> CourseCategory? {
        subCategories.first {
            $0.name?.lowercased() == selectedText
        }
    }
    
    var levelValueText: String? {
        get { course.level?.rawValue.capitalized }
        set{ course.level = Level(rawValue: newValue?.lowercased() ?? "")}
    }
    var classRoomTypeText: String? {
        get { course.classRoomType?.rawValue }
        set { course.classRoomType = ClassRoomType(rawValue: newValue ?? "" ) }
    }
    
    var isLiveCourse: Bool {
        set{course.courseType = newValue ? CourseType.live:.local}
        get{course.courseType == .live}
    }
    var durationText: String? {
        get { course.courseDuration?.getTitle() }
        set { course.courseDuration = Duration.getDuration(by: newValue ?? "")}
    }
    var dayText: String? {
        get{ course.startDay?.rawValue.capitalized}
        set{ course.startDay = Day(rawValue: newValue?.lowercased() ?? "")}
    }
    var isPerWeek: Bool {
        course.group == .perWeek
    }
    //below to isLive stack
    var languageText: String? {
        get{ course.languageMadeIn?.rawValue.capitalized }
        set{ course.languageMadeIn = Language(rawValue: newValue?.lowercased() ?? "")}
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

//MARK: Price section
extension InstructorCourseViewModel {
    var price: String {
        set{ course.price = Int(newValue)}
        get{ course.price?.description ?? "" }
    }
    
    var discountedPrice: String {
        set{ course.discountedPrice = Int(newValue)}
        get{ course.discountedPrice?.description ?? ""}
    }
}

//MARK: Media
extension InstructorCourseViewModel {
    var overViewProviderText: String? {
        get{ course.courseOverViewProvider?.rawValue }
        set{ course.courseOverViewProvider = OverViewProvider(rawValue: newValue?.lowercased() ?? "")}
    }
}

//MARK: data
extension InstructorCourseViewModel {
    func submit() {
        
    }
}
