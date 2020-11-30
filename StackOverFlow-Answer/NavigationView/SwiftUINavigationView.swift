//
//  SwiftUINavigationView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-30.
//

import SwiftUI

struct SwiftUINavigationView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.blue)
                    .ignoresSafeArea(.container, edges: .top)
                VStack {
                    HStack {
                        Button(action: {
                            //pop hosting controller from navigationView
                        }, label: {
                            HStack {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(.gray)
                                Text("Add new course")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .bold()
                            }
                            .padding()
                        })
                        Spacer()
                    }
                }
            }
        }
        .frame(height: 60)
    }
}


struct SwiftUINavigationView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SwiftUINavigationView()
            Spacer()
        }
    }
}
