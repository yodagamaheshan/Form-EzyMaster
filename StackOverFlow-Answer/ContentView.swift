//
//  ContentView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 10/20/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = InstructorCourseViewModel()
    var body: some View {
        
        ScrollView {
            EzyMasterAppButton(action: viewModel.submit, title: "Submit")
        }
        .background(Color.pink.opacity(0.2))
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
