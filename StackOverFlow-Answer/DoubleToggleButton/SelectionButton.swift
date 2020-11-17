//
//  SelectionButton.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct SelectionButton: View {
    @Binding var isSelected: Bool
    
    let title: String
    
    var body: some View {
        Button(action: {
            isSelected = true
        }, label: {
            ToggleButtonLabl(title: title, isSelected: isSelected)
        })
    }
}

struct SelectionButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectionButton(isSelected: .constant(true), title: "Title")
    }
}
