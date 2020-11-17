//
//  ToggleButtonLable.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct ToggleButtonLabl: View {
    let title: String
    let isSelected: Bool
    
    var body: some View {
        HStack{
            Circle()
                .fill(isSelected ? Color.blue:.gray)
                .frame(width: 14, height: 14)
            Text(title)
                .foregroundColor(.gray)
            Spacer()
        }
    }
}

struct ToggleButtonLable_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButtonLabl(title: "Title", isSelected: true)
    }
}
