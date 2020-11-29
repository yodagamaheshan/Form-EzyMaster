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

//TODO: make chanes according to
enum ClassRoomType: String, CaseIterable {
    case oneToOne = "One to one"
    case small = "Small"
    case lecture = "Lecture hall"
    
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
    
    static func getDuration(by title: String) -> Self{
        switch title {
        case "Six months":
            return .sixMonths
        case "One year":
            return .oneYear
        case "One year and six months":
            return .oneYearAndSixMonths
        case "Two year":
            return .twoYear
        case "Four year":
            return .fourYear
        default:
            return .sixMonths
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
