//
//  ImagePickerView.swift
//  StackOverFlow-Answer
//
//  Created by Heshan Yodagama on 2020-11-30.
//

import SwiftUI

struct ImagePickerView: View {
    @Binding var image: Image?
    @State var showImagePicker = false
    
    var body: some View {
        ZStack {
            InputViewBackground()
            if image == nil {
                getDetailView()
            } else {
                getImageView()
            }
        }
        .onTapGesture {
            showImagePicker = true
        }
        .frame(height: 116, alignment: .center)
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(sourceType: .photoLibrary) { image in
                self.image = Image(uiImage: image)
            }
        }
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(style: .init(lineWidth: 2, lineCap: .square, lineJoin: .bevel, miterLimit: 8, dash: [5,10], dashPhase: 7))
            .padding(15)
            
        )
    }
    
    //MARK: method and constant
    fileprivate func getDetailView() -> some View {
        return VStack {
                Image(systemName: "plus.rectangle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 28)
            VStack {
                Text("Course thumbnail")
                Text("600 * 600")
            }
            .foregroundColor(.yellow)
        }
    }
    
    fileprivate func getImageView() -> some View {
        return image!
            .resizable()
            .aspectRatio(contentMode: .fit)
            .contextMenu(ContextMenu(menuItems: {
                Button(action: {
                    image = nil
                }, label: {
                    Text("Delete")
                        .foregroundColor(.red)
                })
            }))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct ImagePickerView_Previews: PreviewProvider {
    @State static var image: Image? = Image("")
    static var previews: some View {
        ImagePickerView(image: $image)
    }
}


