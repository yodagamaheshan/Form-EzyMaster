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
        .frame(height: UIConstants.height, alignment: .center)
    }
    
    //MARK: constant and method
    fileprivate func getTextField() -> some View {
        return TextField(placeHolder, text: $text)
            .keyboardType(keyBoardType)
            .padding([.leading, .trailing], UIConstants.textFieldLeadingAndTralingPadding)
    }
}



struct KeyInputTextField_Previews: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        KeyInputTextField(placeHolder: "Placeholder", text: $text)
    }
}
