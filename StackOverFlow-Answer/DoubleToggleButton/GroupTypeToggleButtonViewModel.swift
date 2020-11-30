//
//  DoubleToggleButtonViewModel.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

class GroupTypeToggleButtonViewModel: ObservableObject {
    internal init(title: String, selection: Binding<CourseGroup>) {
        self.title = title
        self._selection = selection
    }
    
    //output
    @Binding var selection: CourseGroup
    
    func selectLeft() {
        selection = leftValue
    }
    
    func selectRight() {
        selection = rightValue
    }
    
    var leftSelected: Bool {
        selection == leftValue
    }
    var rightSelected: Bool {
        selection == rightValue
    }
    var title: String
    
    private var leftValue = CourseGroup.once
    private var rightValue = CourseGroup.perWeek
    
    var leftTitle: String {
        leftValue.getTitle()
    }
    var rightTitle: String {
        rightValue.getTitle()
    }
    
    
}

