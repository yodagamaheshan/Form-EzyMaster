//
//  DoubleToggleButton.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct DoubleToggleButton: View {
    internal init(titles: DoubleToggleButtonViewModel.Titles, LHSSelection: Binding<Bool>, RHSSelection: Binding<Bool>) {
        self.viewModel = .init(titles: titles, LHSSelection: LHSSelection, RHSSelection: RHSSelection)
    }
    
    @ObservedObject private var viewModel: DoubleToggleButtonViewModel
    
    var body: some View {
        VStack {
            getNameView()
            HStack {
                SelectionButton(isSelected: $viewModel.LHSInsideSelection, title: viewModel.LHSTitle)
                SelectionButton(isSelected: $viewModel.LHSRnsideSelection, title: viewModel.RHSTitle)
            }
            .onAppear(perform: {
                if  viewModel.LHSSelection == viewModel.RHSSelection {
                    viewModel.makeOnlyLHSSelected()
                }
        })
        }
    }
    
    //MARK: constant and methods
    fileprivate func getNameView() -> HStack<TupleView<(Text, Spacer)>> {
        return HStack {
            Text(viewModel.name)
                .foregroundColor(.gray)
                .bold()
            Spacer()
        }
    }
}

struct DoubleToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        DoubleToggleButton(titles: .init(name: "Name", LHSTitle: "Title one", RHSTitle: "Title two"), LHSSelection: .constant(true), RHSSelection: .constant(false))
    }
}
