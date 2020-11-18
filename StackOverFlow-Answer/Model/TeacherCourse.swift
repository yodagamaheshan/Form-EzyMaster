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
    
    //after shedule type stack
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
    
    //media
    var courseOverViewProvider: OverViewProvider?
    var overViewUrl: String = ""
    var thumbnail: Image?
    
    //SEO
    var metaKeywords: String = ""
    var metaDescription: String = ""
    
    var courseID: String = ""
    //id only available when user going to update
    
    var valiedCourse: Bool {
        if isBasicSectionValied && isRequirementAndOutcomesValied && isPricingValied && isValiedMediaSection && isValiedSEO {
            return true
        }
        return false
    }
    
}

//MARK: Basic section
extension TeacherCourse{
    
    private var isBasicSectionValied: Bool {
        if valiedBasicSectionUntilLiveStack && isCourseTypeValied && isValiedBasicSectionAfterSheduleType {
            return true
        }
        return false
    }
    
    private var valiedBasicSectionUntilLiveStack: Bool {
        if title.isEmpty || shortDescription.isEmpty || description.isEmpty || subCategory == nil || level == nil {
            return false
        }
        return true
    }
    
    //inside live stack
    private var isCourseTypeValied: Bool {
        if courseType == .live {
            return isLiveStackValied()
        }
        return true
    }
    
    private func isLiveStackValied() -> Bool{
        return   isValiedLiveStackUntillSheduleType() && isValiedSheduleType()
    }
    
    private func isValiedLiveStackUntillSheduleType() -> Bool {
        if classRoomType == nil || scheduleTitle.trimmingCharacters(in: .whitespaces).isEmpty{
            return false
        }
        return true
    }
    
    private func isValiedSheduleType() -> Bool{
        if group == .perWeek {
            if courseDuration == nil || startDay == nil{
                return false
            }
        }
        return true
    }
    
    //after live stack
    private var isValiedBasicSectionAfterSheduleType: Bool {
        if startDate == nil || startTime == nil || endTime == nil || languageMadeIn == nil {
            return false
        }
        return true
    }
}

//MARK: requirement and outcomes
extension TeacherCourse {
   private var isRequirementAndOutcomesValied: Bool {
        if requirements.isEmpty || outComes.isEmpty {
            return false
        }
        return true
    }
}

//MARK: pricing
extension TeacherCourse {
    private var isPricingValied: Bool {
        if priceValied && valiedDiscout {
            return true
        }
        return false
    }
    
    //pricing
    private var priceValied: Bool {
        if !isFreeCourse, price == nil {
            return false
        }
        return true
    }
    
    private var valiedDiscout: Bool {
        if discountFlag, discountedPrice == nil {
            return false
        }
        return true
    }
}

//MARK: media
extension TeacherCourse {
    var isValiedMediaSection: Bool {
        if courseOverViewProvider == nil || overViewUrl.isEmpty || thumbnail == nil {
            return false
        }
        return true
    }
}

//MARK: SEO
extension TeacherCourse {
    var isValiedSEO: Bool {
        if metaKeywords.isEmpty || metaDescription.isEmpty {
            return false
        }
        return true
    }
}
