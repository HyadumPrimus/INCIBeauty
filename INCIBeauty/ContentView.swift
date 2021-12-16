import SwiftUI

struct MyDesign: View {
    
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: true) {
                
                Text("\(searchText)")
                    .searchable(text: $searchText, prompt: "Look for something...")
                
                //Divider()
                //.padding(0)
                
                VStack(spacing: 0) {
                    Spacer()
                    
                    NavigationLink(destination: AddManually(), label: {
                        
                       CardView(name: "Add manually", imageName: "am3", opacityValue: 0.5)
                        
                    })
                }
                
//                VStack(spacing: 0) {
//                    Spacer()
//
//                    NavigationLink(destination: AddManually(), label: {
//
//                        Image("am1")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 360, height: 140)
//                            .opacity(0.70)
//                            .overlay(Text("Add Manually")
//                            .font(.title3)
//                            .fontWeight(.thin)
//                            .offset(x: 0, y: 5)
//                        //.shadow(color: .indigo, radius: 3, x: 1, y: 1)
//                            .foregroundColor(Color.black)
//                            .background(RoundedRectangle(cornerRadius: 8, style:.continuous)
//                            .fill(Color.white.opacity(0.9))
//                            .offset(x: 0, y: 5)
//                            .frame(width: 150, height: 30, alignment: .center)))
//
//                        //.background(RoundedRectangle(cornerRadius: 8)
//                        //.stroke(Color.primary, lineWidth: 0)
//                        //.background(RoundedRectangle(cornerRadius: 8, style:.continuous).fill(Color.indigo.opacity(0.50)))
//                        //.foregroundColor(Color(.systemFill)), alignment: .center))
//
//                            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
//                    })
//                }
                
                VStack(spacing: 25) {
                    Spacer()
                    
                    NavigationLink(destination: Text("Favorites view"), label: {
                        
                       CardView(name: "Favorites", imageName: "f2", opacityValue: 0.5)
                        
                    })
                }
                
//                VStack(spacing: 25) {
//                    Spacer()
//
//                    NavigationLink(destination: Text("Favorites view"), label: {
//
//                        Image("fav")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 360, height: 140)
//                            .opacity(0.65)
//
//                            .overlay(Text("Favorites")
//                                        .font(.title3)
//                                        .fontWeight(.thin)
//                                        .offset(x: 0, y: 5)
//                                     //                            .shadow(color: .indigo, radius: 3, x: 1, y: 1)
//                                        .foregroundColor(Color.black)
//                                        .background(RoundedRectangle(cornerRadius: 8, style:.continuous)
//                                                        .fill(Color.white.opacity(0.85))
//                                                        .offset(x: 0, y: 5)
//                                                        .frame(width: 150, height: 30, alignment: .center)))
//
//                        //                            .background(RoundedRectangle(cornerRadius: 8)
//                        //                            .stroke(Color.primary, lineWidth: 0)
//                        //                            .background(RoundedRectangle(cornerRadius: 8, style:.continuous).fill(Color.indigo.opacity(0.50)))
//                        //                            .foregroundColor(Color(.systemFill)), alignment: .center))
//
//                            .mask(RoundedRectangle(cornerRadius: 10))
//                    })
//                }
                
                VStack(spacing: 25) {
                    Spacer()
                    
                    NavigationLink(destination: Text("History view"), label: {
                        
                       CardView(name: "History", imageName: "h0", opacityValue: 0.5)
                        
                    })
                }
                
                VStack(spacing: 25) {
                    Spacer()
                    
                    NavigationLink(destination: Text("Community view"), label: {
                        
                        CardView(name: "Community", imageName: "c0", opacityValue: 0.5)
                        
//                        Image("c1")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 360, height: 140)
//                            .opacity(0.70)
//
//                            .overlay(
//                                Text("Community")
//                                        .fontWeight(.regular)
//                                        .offset(x: -94, y: -40)
//                                        .font(.title)
//                                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
//                                        .foregroundColor(Color.white)
//                            )
//
//                        //                            .background(RoundedRectangle(cornerRadius: 8)
//                        //                            .stroke(Color.primary, lineWidth: 0)
//                            .background(RoundedRectangle(cornerRadius: 8, style:.continuous).fill(Color.black.opacity(0.40)))
//                        //                            .foregroundColor(Color(.systemFill)), alignment: .center))
//
//                            .mask(RoundedRectangle(cornerRadius: 10))
                    })
                }
                
                .frame(maxWidth: .infinity)
                .clipped()
                
                VStack(spacing: 65) {
                    Spacer()
                    
                    NavigationLink(destination: Text("Settings view"), label: {
                        
                        Text("Settings")
                            .fontWeight(.light)
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.indigo).frame(width: 360, height: 55).opacity(0.80))
                            .frame(width: 360, height: 55)
                        
                    })
                    
                }
                
                .navigationBarTitle("INCI Analizer")
                
            }
            
            .navigationBarItems(trailing:NavigationLink(destination: Text("Scan view"), label: {
                
                HStack() {
                    
                    Text("Scan")
                        .fontWeight(.light)
                        .font(.title3)
                        .foregroundColor(Color.indigo)
                    
                    Image(systemName:"barcode.viewfinder")
                        .foregroundColor(.indigo)
                        .font(.title)
                }
            })
            )
        }
    }
}


struct MyDesign_Previews: PreviewProvider {
    static var previews: some View {
        MyDesign()
    }
}
