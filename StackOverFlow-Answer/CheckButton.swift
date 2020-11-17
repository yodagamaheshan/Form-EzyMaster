//
//  ToggleButton.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-16.
//

import SwiftUI

struct CheckButton: View {
    @Binding var isSelected: Bool
    
    let title: String
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }, label: {
            HStack {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(isSelected ? Color.blue:.gray)
                Text(title)
                    .foregroundColor(.gray)
                Spacer()
            }
        })
    }
}


struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckButton(isSelected: .constant(true), title: "Long title")
    }
}
