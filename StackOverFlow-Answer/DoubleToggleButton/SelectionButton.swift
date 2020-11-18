//
//  SelectionButton.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct SelectionButton: View {
    let action: () -> Void
    
    let title: String
    let isSelected: Bool
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ToggleButtonLabl(title: title, isSelected: isSelected)
        })
    }
}

struct SelectionButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectionButton(action: {}, title: "Title", isSelected: true)
    }
}
