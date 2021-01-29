//
//  Profile.swift
//  App_conmuc
//
//  Created by Thanh Duy on 27/01/2021.
//

import SwiftUI

struct Profile: View {
    @State private var showingMenu = false
    
    @State private var email = ""
    @State private var address = ""
    @State private var numberPhone = ""
    
    
    var body: some View {
        ZStack {
            Color.init("Color1")
            
            VStack {
                VStack(spacing: 20) {

                    HStack{
                        
                        Button(action: {
                            self.showingMenu.toggle()
                        }, label: {
                            Image(systemName: "list.dash")
                        })
                        .fullScreenCover(isPresented: $showingMenu, content: {
                            Menu()
                        })

                        Spacer()

                        Text("Thong tin ca nhan")

                        Spacer()

                    }.font(.title)
                    .foregroundColor(.white)
                }
                .padding(.top, 50)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
                .background(Color("Color"))

                
                VStack(alignment: .leading) {
                    Text("Email")
                    
                    TextField("Nhap email", text: $email)
                        .border(Color.white)
                        .padding()
                        .background(Color.white)
                        
                    
                        
                    
                    Text("So dien thoai")
                    
                    TextField("Nhap so dien thoai", text: $numberPhone)
                        .border(Color.white)
                        .padding()
                        .background(Color.white)

                    
                    Text("Dia chi")
                    
                    TextField("Nhap dia chi", text: $address)
                        .border(Color.white)
                        .padding()
                        .background(Color.white)

                    
                    Text("Nghe Nghiep")
                    
                    Text("So thich")
                    

                    
                    
                }.padding(.horizontal, 20)
                
                Button(action: {}, label: {
                    Text("Cap nhat tai khoan")
                        .font(.title)
                        .foregroundColor(.white)
                }).padding()
                .frame(width: (UIScreen.main.bounds.width - 40))
                .background(Color.init("Color"))

            
                Spacer()
            }.edgesIgnoringSafeArea(.top)
            
        }

    }
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
