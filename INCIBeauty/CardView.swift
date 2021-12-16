//
//  CardView.swift
//  INCIBeauty
//
//  Created by Raffaella Iacoviello on 15/12/21.
//

import SwiftUI

struct CardView: View {
    
    var name: String
    var imageName: String
    
    var gradient = Gradient(colors: [Color.black, Color.white])
    var opacityValue = 0.3
    
    var body: some View{
        
        ZStack{
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 360, height: 140)
                .mask(RoundedRectangle(cornerRadius: 10))
            
            LinearGradient(
                gradient: gradient,
                startPoint: .bottom,
                endPoint: .top)
                .frame(width: 360, height: 140)
                .mask(RoundedRectangle(cornerRadius: 10))
                .opacity(opacityValue)
            
            HStack(alignment: .bottom) {
                Text(name)
                    .fontWeight(.regular)
                    .font(.title)
                    .offset(x: 40, y: 45)
                    .shadow(color: .secondary, radius: 0.5, x: -0.5, y: -0.5)
                    .foregroundColor(Color.white)
                
                Spacer()
            }
        }
    }
    
    //    var body: some View {
    //
    //        Image(imageName)
    //            .resizable()
    //            .aspectRatio(contentMode: .fill)
    //            .frame(width: 360, height: 140)
    //            .opacity(0.60)
    //            .overlay(
    //                Text(name)
    //                    .fontWeight(.regular)
    //                    .offset(x: -118, y: -40)
    //                    .font(.title)
    //                    .shadow(color: .gray, radius: 2, x: 1, y: 1)
    //                    .foregroundColor(Color.white)
    //            )
    //
    //        //                            .background(RoundedRectangle(cornerRadius: 8, style:.continuous)
    //        //                            .fill(Color.black.opacity(0.40)))
    //
    //            .mask(
    ////                LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top).opacity(0.8)
    //                RoundedRectangle(cornerRadius: 10)
    //            )
    //
    //    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(name: "History", imageName: "h0")
    }
}
