//
//  KeyInputTextEditView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-29.
//

import SwiftUI

struct KeyInputTextEditView: View {
    internal init(placeHolder: String, keyBoardType: UIKeyboardType = .default, text: Binding<String>) {
        self.placeHolder = placeHolder
        self.keyBoardType = keyBoardType
        self._text = text
        UITextView.appearance().backgroundColor = .clear
        //cause text edit backed by UITextView - stackoverflow
    }
    
    let placeHolder: String
    var keyBoardType: UIKeyboardType = .default
    
    @Binding var text: String
    
    var body: some View {
        ZStack {
            InputViewBackground()
            getTextField()
        }
    }
    
    //MARK: constant and method
    fileprivate func getTextField() -> some View {
        return ZStack(alignment: .topLeading) {
            getTextEditView()
            if text.isEmpty {
                getPlaceholderText()
            } 
        }
        .background(Color.clear)
    }
    
    fileprivate func getTextEditView() -> some View {
        return TextEditor(text: $text)
            .background(Color.clear)
            .keyboardType(keyBoardType)
            .padding([.leading, .trailing], UIConstants.textFieldLeadingAndTralingPadding)
            .padding([.top, .bottom], 10)
            .frame(height: 150, alignment: .center)
    }
    
    fileprivate func getPlaceholderText() -> some View{
        return Text(placeHolder)
            .foregroundColor(.gray)
            .padding([.leading, .trailing], UIConstants.textFieldLeadingAndTralingPadding)
            .padding(.top, 1)
            .padding()
    }
}

struct KeyInputTextEditView_Previews: PreviewProvider {
    @State static var description = ""
    
    static var previews: some View {
        KeyInputTextEditView(placeHolder: "placeholder", keyBoardType: .default, text: $description)
    }
}
