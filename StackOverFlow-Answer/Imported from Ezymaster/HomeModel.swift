//
//  HomeModel.swift
//  Ezymaster
//
//  Created by Heshan Yodagama on 7/8/20.
//  Copyright © 2020 Heshan Yodagama. All rights reserved.
//

import Foundation

struct CourseCategory: Codable, Equatable {
    let id, code, name, parent: String?
    let slug, dateAdded: String?
    let lastModified: String?
    let fontAwesomeClass: String?
    let thumbnail: String?
    let numberOfCourses: Int?

    enum CodingKeys: String, CodingKey {
        case id, code, name, parent, slug
        case dateAdded = "date_added"
        case lastModified = "last_modified"
        case fontAwesomeClass = "font_awesome_class"
        case thumbnail
        case numberOfCourses = "number_of_courses"
    }
}
