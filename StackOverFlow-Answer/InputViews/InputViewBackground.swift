//
//  InputViewBackground.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct InputViewBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: cornerRadius)
            .fill(Color.gray)
    }
    
    let cornerRadius:CGFloat = 10
}
struct InputViewBackground_Previews: PreviewProvider {
    static var previews: some View {
        InputViewBackground()
    }
}
