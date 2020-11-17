//
//  PopupInputView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI


struct PopupInputView: View {
    let placeHolder: String
    var value: String?
    
    var body: some View {
        ZStack {
            InputViewBackground()
            HStack {
                Text(value == nil ? placeHolder:value!)
                    .foregroundColor(.yellow)
                Spacer()
                getRoundedImage()
            }
            .padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .frame(height: UIConstants.height, alignment: .center)
        //TODO: Add tap geture
    }
    
    //MARK: constant and method
    fileprivate func getRoundedImage() -> some View {
        return Image(systemName: "chevron.down")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .foregroundColor(.gray)
            .padding(5)
            .frame(width: 19)
            .background(Circle()
                            .fill(Color.yellow))
    }
}
struct PopupInputView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PopupInputView(placeHolder: "Placeholder",value: "Value")
            PopupInputView(placeHolder: "Placeholder",value: nil)
        }
    }
}
