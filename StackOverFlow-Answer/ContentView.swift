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
    var titlesOfDoubleToggleButton = DoubleToggleButtonViewModel.Titles(LHSTitle: "LHS title", RHSTitle: "RHS title")
    
    var body: some View {
        
        ScrollView {
            VStack {
                DoubleToggleButton(titles: titlesOfDoubleToggleButton, LHSSelection: $LHSSelecetion, RHSSelection: $RHSSelection)
                if RHSSelection {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 200)
                        .padding()
                }
                
                ToggleButton(isSelected: $isSelected, title: "Per week")
                EzyMasterAppButton(action: viewModel.submit, title: "Submit")
            }
        }
        .background(Color.pink.opacity(0.2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



