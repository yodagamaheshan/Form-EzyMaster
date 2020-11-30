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
            
            TextEditor(text: $text)
                .background(Color.clear)
                .keyboardType(keyBoardType)
                .padding([.leading, .trailing], UIConstants.textFieldLeadingAndTralingPadding)
                .padding([.top, .bottom], 10)
                .frame(height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            if text.isEmpty {
                Text(placeHolder)
                    .foregroundColor(.gray)
                    .padding([.leading, .trailing], UIConstants.textFieldLeadingAndTralingPadding)
                        .padding(.top, 1)
                    .padding()
            } 
        }
        .background(Color.clear)
    }
}

struct KeyInputTextEditView_Previews: PreviewProvider {
    @State static var description = ""
    
    static var previews: some View {
        KeyInputTextEditView(placeHolder: "placeholder", keyBoardType: .default, text: $description)
    }
}
