//
//  DoubleToggleButtonViewModel.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

class DoubleToggleButtonViewModel: ObservableObject {
    //TODO: refactor
    internal init(titles: Titles, LHSSelection: Binding<Bool>, RHSSelection: Binding<Bool>) {
        self.titles = titles
        self._LHSSelection = LHSSelection
        self._RHSSelection = RHSSelection
        self.LHSInsideSelection = LHSSelection.wrappedValue
        self.LHSRnsideSelection = RHSSelection.wrappedValue
    }
    
    struct Titles {
        let LHSTitle: String
        let RHSTitle: String
    }
    
    private var titles: Titles
    
    var LHSTitle: String {
        titles.LHSTitle
    }
    var RHSTitle: String {
        titles.RHSTitle
    }
    
    //output
    @Binding var LHSSelection: Bool
    @Binding var RHSSelection: Bool
    
    //inside
    @Published  var LHSInsideSelection: Bool {
        didSet {
            makeOnlyLHSSelected()
        }
    }
    @Published  var LHSRnsideSelection: Bool{
        didSet{
            makeOnlyRHSSelected()
        }
    }
    
    private func makeOnlyLHSSelected() {
        LHSSelection = true
        RHSSelection = false
    }
    
    func makeOnlyRHSSelected() {
        LHSSelection = false
        RHSSelection = true
    }
}
