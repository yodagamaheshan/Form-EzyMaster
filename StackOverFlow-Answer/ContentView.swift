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
                getRequirementSection()
                getOutComesSection()
                getPricingSection()
                getMediaSection()
                getSEOSection()
                
                EzyMasterAppButton(action: viewModel.submit, title: "Submit", isValied: viewModel.course.isValiedCourse)
            }
            .padding(scrollViewContentPadding)
            .animation(.spring())
        }
        .background(Color.pink.opacity(0.2))
    }
    
    //MARK: constant and methods
    let scrollViewContentPadding: CGFloat = 22
}

//MARK: Basic section View
//TODO: refactor if possible
extension ContentView {
    fileprivate func getBasicSection() -> some View {
        return EzyMasterFormSectionView(title: "Basic") {
            VStack {
                getViewAboveIsLiveStack()
                //isLive stack
                if viewModel.isLiveCourse {
                    getIsLiveView()
                }
                getViewBelowToIsLiveStack()
            }
        }
    }
    
    fileprivate func getViewAboveIsLiveStack() -> some View {
        return VStack {
            KeyInputTextField(placeHolder: "Course title", text: $viewModel.course.title)
            KeyInputTextField(placeHolder: "Short description", text: $viewModel.course.shortDescription)
            KeyInputTextField(placeHolder: "Description", text: $viewModel.course.description)
            PopupInputView(placeHolder: "Select sub category", selectableItems: viewModel.allSubCategorySelectables, selection: $viewModel.subCategoryName)
            PopupInputView(placeHolder: "Select level", selectableItems: viewModel.allLevelSelectables, selection: $viewModel.levelValueText)
            CheckButton(isSelected: $viewModel.isLiveCourse, title: "Check if this course is live")
        }
    }
    
    fileprivate func getIsLiveView() -> some View {
        return VStack {
            PopupInputView(placeHolder: "Select class room type",selectableItems: viewModel.allClassRoomSelectables, selection: $viewModel.classRoomTypeText)
            KeyInputTextField(placeHolder: "Shedule title", text: $viewModel.course.scheduleTitle)
            GroupTypeToggleButton(viewModel: .init(title: "Shedule type", selection: $viewModel.course.group))
            //per week stack
            if viewModel.isPerWeek {
                getPerWeekView()
            }
        }
    }
    
    fileprivate func getPerWeekView() -> some View {
        return VStack {
            PopupInputView(placeHolder: "Select course duration",selectableItems: viewModel.allCourseDurationSelectables, selection: $viewModel.durationText)
            PopupInputView(placeHolder: "Select day",selectableItems: viewModel.allDaySelectables, selection: $viewModel.dayText)
            
        }
    }

    fileprivate func getViewBelowToIsLiveStack() -> some View {
        return VStack {
            DateInputView(title: "Select start date", selection: $viewModel.course.startDate, DatePickerComponents: .date)
            DateInputView(title: "Select start time", selection: $viewModel.course.startTime, DatePickerComponents: .hourAndMinute)
            DateInputView(title: "Select end time", selection: $viewModel.course.endTime, DatePickerComponents: .hourAndMinute)
            PopupInputView(placeHolder: "Select language made in",selectableItems: viewModel.allLangyageSelectables, selection: $viewModel.languageText)
            CheckButton(isSelected: $viewModel.course.isTopCourse, title: "Check if this course is top course")
        }
    }
}

//MARK: Requirements
extension ContentView {
    fileprivate func getRequirementSection() -> some View {
        return EzyMasterFormSectionView(title: "Requirements") {
            KeyInputTextField(placeHolder: "ex: requirenment 1,requirenment 2", text: $viewModel.requirements)
        }
    }
}

//MARK: Outcomes
extension ContentView {
    fileprivate func getOutComesSection() -> EzyMasterFormSectionView<KeyInputTextField> {
        return EzyMasterFormSectionView(title: "Outcomes") {
            KeyInputTextField(placeHolder: "ex: outcome 1, outcome 2", text: $viewModel.outcomes)
        }
    }
}

//MARK: Pricing
extension ContentView {
    fileprivate func getPricingSection() -> some View {
        return EzyMasterFormSectionView(title: "Pricing") {
            VStack {
                CheckButton(isSelected: $viewModel.course.isFreeCourse, title: "Check if this is a free course")
                //Free course tsack view
                if !viewModel.course.isFreeCourse {
                    getPricingView()
                }
            }
        }
    }
    
    /// Not free views
    fileprivate func getPricingView() -> some View {
        return VStack {
            KeyInputTextField(placeHolder: "Course price($)", keyBoardType: .numberPad, text: $viewModel.price)
            CheckButton(isSelected: $viewModel.course.discountFlag, title: "Check if this course has discount")
            if viewModel.course.discountFlag {
                KeyInputTextField(placeHolder: "Discounted price($)", keyBoardType: .numberPad, text: $viewModel.discountedPrice)
            }
        }
    }
}

//MARK: Media
extension ContentView {
    fileprivate func getMediaSection() -> some View {
        return EzyMasterFormSectionView(title: "Media") {
            VStack {
                PopupInputView(placeHolder: "Select overView provider", selectableItems:viewModel.allOverViewProviders, selection: $viewModel.overViewProviderText)
                KeyInputTextField(placeHolder: "Course overview url", keyBoardType: .URL, text: $viewModel.course.overViewUrl)
                //TODO: replace with image picker
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.gray)
                    .frame(height: 200)
            }
        }
    }
}

//MARK: SEO
extension ContentView{
    fileprivate func getSEOSection() -> some View {
        return EzyMasterFormSectionView(title: "SEO") {
            VStack {
                KeyInputTextField(placeHolder: "Meta description", text: $viewModel.course.metaDescription)
                //TODO: replace with Text...
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.gray)
                    .frame(height: 200)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

