//
//  ContentView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 10/20/20.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject private var viewModel = InstructorCourseViewModel()
    
    @State private var isSelected = false
    @State private var LHSSelecetion = false
    @State private var RHSSelection = false
    @State private var coursetitle = ""
    @State private var courseDescription = ""
    @State private var courseLongDescription = "courseLongDescription"
    
    var titlesOfDoubleToggleButton = DoubleToggleButtonViewModel.Titles(name: "Name", LHSTitle: "LHS title", RHSTitle: "RHS title")
    
    var body: some View {
        
        ScrollView {
            VStack {
                DoubleToggleButton(titles: titlesOfDoubleToggleButton, LHSSelection: $LHSSelecetion, RHSSelection: $RHSSelection)
                if RHSSelection {
                    getRHSView()
                }
                ZStack {
                    SectionBackground()
                    VStack {
                        PopupInputView(placeHolder: "Placeholder",value: "Value")

                        PopupInputView(placeHolder: "Placeholder",value: nil)
                    }
                    .padding()
                }
                .padding()
                CheckButton(isSelected: $isSelected, title: "Per week")
                EzyMasterAppButton(action: viewModel.submit, title: "Submit")
            }
            .animation(.spring())
        }
        .background(Color.pink.opacity(0.2))
    }
    
    //MARK: constant and methods
    fileprivate func getRHSView() -> some View {
        return ZStack {
            SectionBackground()
            VStack {
                KeyInputTextField(placeHolder: "Course title", text: $coursetitle)
                KeyInputTextField(placeHolder: "Short description", text: $courseDescription)
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
