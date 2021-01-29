//
//  CheckIn.swift
//  App_conmuc
//
//  Created by Thanh Duy on 27/01/2021.
//

import SwiftUI

struct CheckIn: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
            ZStack {
                Color.init("Color1")
                
                VStack {
                    VStack(spacing: 20) {

                        HStack{
                            
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "chevron.backward")
                            })

                            Spacer()

                            Text("Check in su kien")

                            Spacer()

                        }.font(.title)
                        .foregroundColor(.white)
                    }
                    .padding(.top, 50)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 20)
                    .background(Color("Color"))

                    
                    Spacer()
                    
                    Image("icon_beacon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.15)
                    
                    Text("Check in su kien ngay nhe!")
                        .font(.title)
                        .padding()
                    
                    
//                    Button(action: {}, label: {
//                        Text("Bat dau")
//                            .font(.title)
//                            .foregroundColor(.white)
//                    }).padding()
//                    .frame(width: (UIScreen.main.bounds.width - 40))
//                    .background(Color.init("Color"))
                    
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("Bat dau")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: (UIScreen.main.bounds.width - 40))
                                .background(Color.init("Color"))
                        })
 

                    Spacer()
                    
                    Spacer()
                }
                
            }.edgesIgnoringSafeArea(.all)
        }
        }
    }
}

struct CheckIn_Previews: PreviewProvider {
    static var previews: some View {
        CheckIn()
    }
}
