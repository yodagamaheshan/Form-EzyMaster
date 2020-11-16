//
//  GivenSwiftUIView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 11/10/20.
//

import SwiftUI

struct GivenSwiftUIView: View {
    let data = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen"]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Section")) {
                    ForEach(data, id: \.self) { word in
                        Text(word)
                    }
                }
            }
            .listStyle(SidebarListStyle())
            .navigationBarTitle(Text("Title"), displayMode: .large)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct GivenSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GivenSwiftUIView()
    }
}
