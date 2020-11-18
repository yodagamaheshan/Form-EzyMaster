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
    
    var body: some View {
        
        ScrollView {
            VStack {
                getBasicSection()
                EzyMasterAppButton(action: viewModel.submit, title: "Submit")
            }
            .padding(22)
            .animation(.spring())
        }
        .background(Color.pink.opacity(0.2))
    }
    
    //MARK: constant and methods
}

//MARK: Basic section View
extension ContentView {
    fileprivate func getBasicSection() -> some View {
        return EzyMasterFormSectionView(title: "Basic") {
            VStack {
                
                VStack {
                    KeyInputTextField(placeHolder: "Course title", text: $viewModel.course.title)
                    KeyInputTextField(placeHolder: "Short description", text: $viewModel.course.shortDescription)
                    KeyInputTextField(placeHolder: "Description", text: $viewModel.course.description)
                    PopupInputView(placeHolder: "Select sub category",value: viewModel.subCategoryName)
                    PopupInputView(placeHolder: "Select level",value: viewModel.subCategoryName)
                    CheckButton(isSelected: $viewModel.isLiveCourse, title: "Check if this course is live")
                }
                //isLive stack
                if viewModel.isLiveCourse {
                    getIsLiveView()
                }
                DateInputView(placeHolder: "Select start date", value: nil)
                DateInputView(placeHolder: "Select start time", value: nil)
                DateInputView(placeHolder: "Select end time", value: nil)
                PopupInputView(placeHolder: "Select language made in",value: nil)
                CheckButton(isSelected: $viewModel.course.isTopCourse, title: "Check if this course is top course")
            }
        }
    }
    
    fileprivate func getIsLiveView() -> some View {
        return VStack {
            PopupInputView(placeHolder: "Select class room type",value: viewModel.subCategoryName)
            PopupInputView(placeHolder: "Shedule title",value: nil)
            GroupTypeToggleButton(viewModel: .init(title: "Shedule type", selection: $viewModel.course.group))
            //per week stack
            if viewModel.isPerWeek {
                getPerWeekView()
            }
        }
    }
    
    fileprivate func getPerWeekView() -> VStack<TupleView<(PopupInputView, PopupInputView)>> {
        return VStack {
            PopupInputView(placeHolder: "Select course duration",value: viewModel.courseDurationValue)
            PopupInputView(placeHolder: "Select day", value: viewModel.startDay)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

