//
//  EzyMasterAppButton.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-16.
//

import SwiftUI

struct EzyMasterAppButton: View {
    let action: () -> Void
    let title: String
    
    var body: some View {
        Button(action: {
            //TODO:
        }, label: {
            Spacer()
            Text(title)
                .bold()
                .foregroundColor(.white)
            Spacer()
        })
        .frame(height: 48, alignment: .center)
        .background(Color.blue)
        .cornerRadius(6)
    }
}

struct EzyMasterAppButton_Previews: PreviewProvider {
    static var previews: some View {
        EzyMasterAppButton(action: {}, title: "Title")
    }
}
