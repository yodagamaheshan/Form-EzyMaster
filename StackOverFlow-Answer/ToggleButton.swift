//
//  ToggleButton.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-16.
//

import SwiftUI

struct ToggleButton: View {
    @Binding var isSelected: Bool
    
    let title: String
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }, label: {
            ToggleButtonLabl(title: title, isSelected: isSelected)
        })
    }
}


struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButton(isSelected: .constant(true), title: "Long title")
    }
}
