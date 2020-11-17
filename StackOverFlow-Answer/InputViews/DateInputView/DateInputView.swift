//
//  DateInputView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct DateInputView: View {
    let placeHolder: String
    var value: String?
    
    var body: some View {
        ZStack {
            InputViewBackground()
            HStack {
                Text(value == nil ? placeHolder:value!)
                    .foregroundColor(.yellow)
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .frame(height: UIConstants.height, alignment: .center)
        //TODO: Add tap geture
    }
}

struct DateInputView_Previews: PreviewProvider {
    static var previews: some View {
        DateInputView(placeHolder: "Start Date", value: "2020-12-11")
    }
}
