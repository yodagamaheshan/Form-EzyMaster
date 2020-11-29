//
//  DateInputView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct DateInputView: View {
    let title: String
    @Binding var selection: Date
    @State var isDatePickerShow = false
    let DatePickerComponents: DatePickerComponents
    
    var body: some View {
        ZStack {
            InputViewBackground()
            
            DatePicker(selection: $selection, in: Date()..., displayedComponents: DatePickerComponents) {
                Text(title)
                    .padding(.leading, 10)
            }
            .accentColor(.yellow)
            //TODO: Add tap geture
        }
        .frame(height: UIConstants.height, alignment: .center)
    }
}

struct DateInputView_Previews: PreviewProvider {
    @State static var selectedDate: Date = Date()
    static var previews: some View {
        VStack {
            DateInputView(title: "Start Date", selection: $selectedDate, DatePickerComponents: .date)
            DateInputView(title: "Start Date", selection: $selectedDate, DatePickerComponents: .hourAndMinute)
        }
        
    }
}
