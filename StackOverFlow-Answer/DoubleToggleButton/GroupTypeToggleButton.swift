//
//  DoubleToggleButton.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

//FIXME: re name
struct GroupTypeToggleButton: View  {
    internal init(viewModel: GroupTypeToggleButtonViewModel) {
        self.viewModel = viewModel
    }
    
    @ObservedObject private var viewModel: GroupTypeToggleButtonViewModel
    
    var body: some View {
        VStack {
            getNameView()
            HStack {
                SelectionButton(action: {
                    viewModel.selectLeft()
                }, title: viewModel.leftTitle, isSelected: viewModel.leftSelected)
                SelectionButton(action: {
                    viewModel.selectRight()
                }, title: viewModel.rightTitle, isSelected: viewModel.rightSelected)
            }
        }
    }
    
    //MARK: constant and methods
    fileprivate func getNameView() -> HStack<TupleView<(Text, Spacer)>> {
        return HStack {
            Text(viewModel.title)
                .foregroundColor(.gray)
                .bold()
            Spacer()
        }
    }
}

struct DoubleToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        GroupTypeToggleButton(viewModel: .init(title: "Title", selection: .constant(.once)))
    }
}
