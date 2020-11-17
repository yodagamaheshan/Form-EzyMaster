//
//  KeyInputTextField.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct KeyInputTextField: View {
    internal init(placeHolder: String, keyBoardType: UIKeyboardType = .default, text: Binding<String>) {
        self.placeHolder = placeHolder
        self.keyBoardType = keyBoardType
        self._text = text
    }
    
    let placeHolder: String
    var keyBoardType: UIKeyboardType = .default
    
    @Binding var text: String
    
    var body: some View {
        ZStack {
            InputViewBackground()
            getTextField()
        }
        .frame(height: height, alignment: .center)
    }
    
    //MARK: constant and method
    let height: CGFloat = 48
    let textFieldLeadingAndTralingPadding: CGFloat = 21
    
    fileprivate func getTextField() -> some View {
        return TextField(placeHolder, text: $text)
            .keyboardType(keyBoardType)
            .padding([.leading, .trailing], textFieldLeadingAndTralingPadding)
    }
}



struct KeyInputTextField_Previews: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        KeyInputTextField(placeHolder: "Placeholder", text: $text)
    }
}
