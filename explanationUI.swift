//
//  explanationUI.swift
//  Omveer`s App
//
//  Created by Omveer Panwar on 20/03/24.
//

import SwiftUI

struct explanationUI: View {
    var body: some View {
        
        VStack{
            ZStack{
                Color("Bg").edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        Image("chair_1")
                            .resizable()
                            .aspectRatio(contentMode:.fit).edgesIgnoringSafeArea(.top)
                        ExplanationView()
                            .offset(y: -40)
                    }
                    HStack{
                        Text("$1299")
                            .font(.title)
                            .foregroundStyle(.white)
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Add to Cart")
                                .padding()
                                .padding(.horizontal)
                                .background(Color.white)
                                .cornerRadius(10)
                                .foregroundColor(Color("Primary"))
                        })
                    }
                    .padding()
                    .background(Color("Primary"))
                    .cornerRadius(50)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                }
                .edgesIgnoringSafeArea(.bottom)
                // .clipShape(RoundedCorner(radius: 50, corners: [.topLeft, .topRight]))
            }
            //hh h hs hs h sh h  ehsd hsd shbs djbds dsds djs dh sdsds djsdsddbds dbjds ddbd sbd bn db d jbdd asjbds dsbds dbjs sdbsjd sndsjd adbd dvds snbd sdbd dbd dbjd sdsd ds shbd sbchj csbc s cjsbcs cscba 
        }
    }
    
    //    struct RoundedCorner: Shape {
    //
    //        var radius: CGFloat = .infinity
    //        var corners: UIRectCorner = .allCorners
    //
    //        func path(in rect: CGRect) -> Path {
    //            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    //            return Path(path.cgPath)
    //        }
    //    }
    
}

#Preview {
    explanationUI()
}

struct ExplanationView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Luxuary Swedia \n Chair" ).font(.title)
                .fontWeight(.bold)
            
            HStack(spacing : 4){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Image("star")
                }
                Text("(4.9)").opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            Text("Description")
                    .fontWeight(.medium).padding(.vertical,8)
            
        Text("Armchairs are more comfortable than armless chairs because the best option because it allows them to relax dining.")
                .lineSpacing(8.0).opacity(0.6)
             
             
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("size")
                        .fontWeight(.semibold)
                        .padding(.bottom,4)
                    Text("Height : 120cm")
                        .opacity(0.6)
                    Text("Wide : 110cm")
                        .opacity(0.6)
                    Text("Diameter : 70cm")
                        .opacity(0.6)
                }  .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    Text("Treatment")
                        .fontWeight(.semibold)
                        .padding(.bottom,4)
                    Text("Jati wood, Canvas \n Amazing love")
                        .opacity(0.6)
                }
                .frame(maxWidth: .infinity, alignment : .leading)
            }.padding(.vertical)
            
            HStack(alignment: .bottom){
                VStack(alignment : .leading){
                    Text("Colors")
                        .fontWeight(.semibold)
                    
                    HStack{
                        ColorDotView(color: .white)
                        ColorDotView(color: .black)
                        ColorDotView(color: Color("Primary"))
                        
                    }
                }
                Spacer()
                VStack (alignment: .leading){
                    
                Text("Quantity")
                        .fontWeight(.semibold)
                    HStack{
                        Button(action: {}){
                            Image(systemName: "minus")
                                .padding(.all, 8)
                        }
                        .frame(width: 30, height: 30)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke()).foregroundColor(.black)
                        
                        Text("1")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.horizontal,8)
                        
                        Button(action: {}){
                            Image(systemName: "plus")
                                .padding(.all, 8)
                        }
                        .frame(width: 30, height: 30)
                        .background(Color("Primary"))
                        .clipShape(Circle())
                        .foregroundColor(.black)
                    }
                }
            }
            
        }.padding()
            .padding()
            .background(Color("Bg"))
            .cornerRadius(40.0)
    }
}

struct ColorDotView: View {
    let color : Color
    var body: some View {
        color
            .frame(width: 24,height: 24)
            .clipShape(Circle())
    }
}
