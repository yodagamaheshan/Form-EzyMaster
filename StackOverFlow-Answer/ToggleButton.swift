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
            buttonLable()
        })
    }
    
    //MARK: constants and methods
    fileprivate func buttonLable() -> some View {
        return HStack {
            Circle()
                .fill(isSelected ? Color.blue:.gray)
                .frame(width: 14, height: 14)
            Text(title)
                .foregroundColor(.gray)
            Spacer()
        }
    }
}


struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButton(isSelected: .constant(true), title: "Long title")
    }
}
