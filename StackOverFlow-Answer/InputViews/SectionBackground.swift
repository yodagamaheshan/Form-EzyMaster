//
//  SectionBackground.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct SectionBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
    }
}

struct SectionBackground_Previews: PreviewProvider {
    static var previews: some View {
        SectionBackground()
    }
}
