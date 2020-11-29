//
//  PopupInputView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI


struct PopupInputView: View {
    
    init(placeHolder: String, selectableItems: [String], selection: Binding<String?>) {
        self._selection = selection
        self.placeHolder = placeHolder
        self.selectableItems = selectableItems
    }
    
    @Binding var selection: String?
    
    var placeHolder: String
    var selectableItems: [String] = []
    
    var body: some View {
        Menu {
            getMenuItem()
        } label: {
            getInputView()
        }
    }
    
    //MARK: constant and method
    fileprivate func getMenuItem() -> some View {
        return ForEach(selectableItems, id: \.self) { (item) in
            Button {
                selection = item
            } label: {
                HStack {
                    Text(item)
                }
            }
        }
    }
    
    fileprivate func getInputView() -> some View {
        return ZStack {
            InputViewBackground()
            HStack {
                Text(selection == nil ? placeHolder:selection!)
                    .foregroundColor(.yellow)
                Spacer()
                RoundBackgroundImage(systemName: "chevron.down", forGroundColor: .gray, length: 19, backgroundColor: .yellow)
            }
            .padding(10)
        }
        .frame(height: UIConstants.height, alignment: .center)
    }
    
}
struct PopupInputView_Previews: PreviewProvider {
    @State static var selection: String? = nil
    
    static var previews: some View {
        VStack {
            PopupInputView(placeHolder: "PlaceHolder", selectableItems: ["One", "Two", "Three"], selection: $selection)
        }
    }
}

