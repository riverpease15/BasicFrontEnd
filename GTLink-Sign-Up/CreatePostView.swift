//
//  CreatePostView.swift
//  GTLink-Sign-Up
//
//  Created by River Pease on 10/26/22.
//

import SwiftUI

struct CreatePostView: View{
    
    @State private var image = UIImage()
    @State private var showSheet = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                // Title and back arrow
                
                // Add image
                ZStack {
                    Image(uiImage: self.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 200)
                        .background(Color.black.opacity(0.2))
                        .clipped()
                    
                    Text("Add Image")
                        .frame(width: 200, height: 50)
                        .background(Color.gray)
                        .cornerRadius(16)
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .onTapGesture {
                            showSheet = true
                        }
                    
                }
                .padding(.horizontal, 20)
                .sheet(isPresented: $showSheet) {
                    // Pick an image from the photo library:
                    ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
                }
                
                // Title text field
                TextField("Title", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.top, 20)
                Divider()
                    .frame(width: 200, height: 2)
                    .background(Color.black.opacity(0.2))
                
                // Username and date
                HStack {
                    Image(systemName: "person")
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                        .font(.system(size: 20.0))
                    Text("gburdell")
                    Text(Date(), style: .date)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing, 20)
                }
                .padding(.top, 20)
                
                // Description
                VStack {
                    Text("Description")
                        .multilineTextAlignment(.leading)
                        .underline()
                        .padding(.top, 20)
                        .padding(.leading, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Enter project description here.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                // Select post type
                VStack {
                    Text("Category")
                        .multilineTextAlignment(.leading)
                        .underline()
                        .padding(.top, 50)
                        .padding(.leading, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Button("Study") {
                            print("Project button clicked.")
                        }
                        .frame(width: 90, height: 30)
                        .foregroundColor(Color.black)
                        .overlay(RoundedRectangle(cornerRadius: 25) .stroke(Color.black) )
                        .padding(.leading, 20)
                        
                        Button("Project") {
                            print("Project button clicked.")
                        }
                        .frame(width: 90, height: 30)
                        .foregroundColor(Color.black)
                        .overlay(RoundedRectangle(cornerRadius: 25) .stroke(Color.black) )
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                // Select tags
                
                
                // Additional Information
                VStack {
                    Text("Additional Information")
                        .multilineTextAlignment(.leading)
                        .underline()
                        .padding(.top, 50)
                        .padding(.leading, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    TextField("Enter any additional information here.", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 20)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                // Post button
                Button("Post") {
                    print("Next button clicked.")
                }
                    .frame(width: 120, height: 50)
                    .foregroundColor(Color.black)
                    .overlay(RoundedRectangle(cornerRadius: 25) .stroke(Color.black) )
                    .padding(.top, 50)
                
            }
            .navigationTitle("Create a Post")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                        Button("Back") {}
                    }
            }
        }
    }
            
}


struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
    }
}
