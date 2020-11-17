//
//  EzyMasterFormSectionView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-17.
//

import SwiftUI

struct EzyMasterFormSectionView<Content>: View where Content: View{
    init(title: String, content: @escaping () -> Content ) {
        self.title = title
        self.content = content
    }
    
    private let title: String
    private let content: () -> Content
    
    var body: some View {
        ZStack {
            SectionBackground()
            VStack(spacing: titleAndContentSpaceing) {
                getTitleView()
                content()
            }
            .padding([.top,.bottom],16)
            .padding([.leading,.trailing],11)
        }
    }
    
    //MARK: constant and
    let titleAndContentSpaceing:CGFloat = 11
    fileprivate func getTitleView() -> some View {
        return HStack {
            Text(title)
                .foregroundColor(.gray)
                .bold()
            Spacer()
        }
    }
}

struct EzyMasterFormSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            VStack {
                EzyMasterFormSectionView(title: "Title", content: {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.green)
                        .frame(height: 300)
                })
                .shadow(radius: 50 )
                .padding()
            }
            .background(Color.yellow.opacity(0.2))
        }
    }
}
