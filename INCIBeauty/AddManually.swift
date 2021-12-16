//
//  AddManually.swift
//  INCIBeauty
//
//  Created by Raffaella Iacoviello on 11/12/21.
//

import SwiftUI

struct AddManually: View {
    
    @State var changeImage = false
    @State var openCameraRoll = false
    @State var changeImage2 = false
    @State var openCameraRoll2 = false
    @State var imageSelected = UIImage()
    @State var imageSelected2 = UIImage()
    
    @State private var showingAlert = false
    
    var body: some View {
        
//        NavigationView{
            
            VStack(alignment: .leading, spacing: 10){
                
                HStack(spacing: 10) {
                    
                    //Spacer()
                    //.frame(height: 15)
                    
//                    ZStack(alignment: .center){
                
                        Button(action: {
                            
                            changeImage = true
                            openCameraRoll = true
                            
                        }, label: {
                            
                            if changeImage {
                                
                                Image(uiImage: imageSelected)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(10)
                            }
                            else {
                                
                                Image("pluss")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(10)
//                                    .opacity(0.2)
                            }
                        }).padding()
                        
//                        Image(systemName: "plus")
//                            .frame(width: 30, height: 30)
//                            .foregroundColor(.white)
//                    }
                    
                    .sheet(isPresented: $openCameraRoll){
                        
                        ImagePicker(selectedImage: $imageSelected, sourceType: .camera)
                    }
                
                    Text("Take a picture of the product")
                        .fontWeight(.regular)
                        .foregroundColor(Color.secondary)
                }
                
                
                HStack(spacing: 10) {
                    
                    //Spacer()
                    //.frame(height: 15)
                    
//                    ZStack(alignment: .center){
                
                        Button(action: {
                            
                            changeImage2 = true
                            openCameraRoll2 = true
                            
                        }, label: {
                            
                            if changeImage2 {
                                
                                Image(uiImage: imageSelected2)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(10)
                                    
                            }
                            else {
                            
                            Image("pluss")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
//                                .opacity(0.2)
                                
                            }
                        }).padding()
                        
//                        Image(systemName: "plus")
//                            .frame(width: 30, height: 30)
//                            .foregroundColor(.white)
//                    }
                    
                        .sheet(isPresented: $openCameraRoll2){
                            
                            ImagePicker(selectedImage: $imageSelected2, sourceType: .camera)
                        }
                    
                    Text("Take a picture of the ingredients")
                        .fontWeight(.regular)
                        .foregroundColor(Color.secondary)
                }
                
                VStack{
                    
                    Button(action: {showingAlert = true}) {

                        Text("Submit")
                            .fontWeight(.light)
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.indigo).frame(width: 160, height: 55).opacity(0.80))
                            .frame(width: 160, height: 55)
                        
                    }.alert(" Wonderful!✨                         You have correctly submitted the request!", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                        
                    }.offset(x: 133, y: 300)
                }
            }
            .offset(x: -10, y: -180)
            
            .navigationBarTitle("Add manually")
    }
}


struct AddManually_Previews: PreviewProvider {
    static var previews: some View {
        AddManually()
    }
}
