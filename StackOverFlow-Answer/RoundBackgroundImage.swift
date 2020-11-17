//
//  RoundBackgroundImage.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct RoundBackgroundImage: View {
    let systemName: String
    let forGroundColor: Color
    let length: CGFloat
    let backgroundColor: Color
    
    var body: some View {
        Image(systemName: systemName)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .foregroundColor(forGroundColor)
            .padding(aroundPadding)
            .frame(width: length, height: length)
            .background(Circle()
                            .fill(Color.yellow))
    }
    
    var aroundPadding: CGFloat {
        5/19*length
    }
}

struct RoundBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundBackgroundImage(systemName: "chevron.down", forGroundColor: .gray, length: 19, backgroundColor: .yellow)
    }
}
