//
//  DateInputView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

/// get only time part when geting selected time.Because day hasnot concidered when taking hourAndMinute here.
struct DateInputView: View {
    let title: String
    @Binding var selection: Date
    @State var isDatePickerShow = false
    let datePickerComponents: DatePickerComponents
    
    var body: some View {
        ZStack {
            InputViewBackground()
            
            if datePickerComponents == .hourAndMinute {
                DatePicker(selection: $selection, displayedComponents: datePickerComponents) {
                    getTitle()
                }
            } else {
                DatePicker(selection: $selection, in: Date()..., displayedComponents: datePickerComponents) {
                    getTitle()
                }
            }
        }
        .accentColor(.yellow)
        .frame(height: UIConstants.height, alignment: .center)
    }
    
    //MARK: constant and methods
    fileprivate func getTitle() -> some View {
        return Text(title)
            .padding(.leading, 10)
    }
}

struct DateInputView_Previews: PreviewProvider {
    @State static var selectedDate: Date = Date()
    static var previews: some View {
        VStack {
            DateInputView(title: "Start Date", selection: $selectedDate, datePickerComponents: .date)
            DateInputView(title: "Start Date", selection: $selectedDate, datePickerComponents: .hourAndMinute)
        }
        
    }
}
