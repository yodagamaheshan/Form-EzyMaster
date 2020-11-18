//
//  Inported.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-18.
//

import Foundation
enum Level: String, CaseIterable{
    case beginner
    case intermediate
    case advanced
}

enum CourseType: String, CaseIterable {
    case local
    case live
}

enum ClassRoomType: Int, CaseIterable {
    case oneToOne = 0
    case small = 1
    case lecture = 2
    
    var value: String {
        get {
            switch self {
            case .oneToOne:
                return "One to One Classroom"
            case .small:
                return "Small Classroom"
            case .lecture:
                return "Lecture Hall"
            }
        }
    }
    
    func getTitle() -> String {
        switch self {
        case .oneToOne:
            return "One to one"
        case .small:
            return "Small"
        case .lecture:
            return "Lecture hall"
        }
    }
}

enum Group: String, CaseIterable {
    case once
    case perWeek = "per_week"
    
    func getTitle() -> String {
        
        switch self {
        case .once:
            return self.rawValue.localizedCapitalized
        case .perWeek:
            return "Per week"
        }
    }
    
    func getButtonTag() -> Int {
        switch self {
        case .once:
            return 0
        case .perWeek:
            return 1
        }
    }
}

enum Duration: Int, CaseIterable {
    case sixMonths = 6
    case oneYear = 12
    case oneYearAndSixMonths = 18
    case twoYear = 24
    case fourYear = 48
    
    func getTitle() -> String {
        switch self {
        case .sixMonths:
            return "Six months"
        case .oneYear:
            return "One year"
        case .oneYearAndSixMonths:
            return "One year and six months"
        case .twoYear:
            return "Two year"
        case .fourYear:
            return "Four year"
        }
    }
}

enum Day: String, CaseIterable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

enum Language: String, CaseIterable {
    case english
    case sinhala
}

enum OverViewProvider: String, CaseIterable {
    case youtube
    case vimo
    case html5
}
