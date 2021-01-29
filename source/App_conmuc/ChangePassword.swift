//
//  ChangePassword.swift
//  App_conmuc
//
//  Created by Thanh Duy on 27/01/2021.
//

import SwiftUI

struct ChangePassword: View {
    @State private var showingSheet = false
    
    @State private var password = ""
    @State private var Newpassword = ""
    @State private var Renewpassword = ""

    
    var body: some View {
        ZStack {
            Color.init("Color1")
            
            VStack {
                VStack(spacing: 20) {

                    HStack{
                        
                        Button(action: {
                            self.showingSheet.toggle()
                        }, label: {
                            Image(systemName: "list.dash")
                        }).sheet(isPresented: $showingSheet, content: {
                            Menu()
                        })
                        

                        Spacer()

                        Text("Doi mat khau")

                        Spacer()

                    }.font(.title)
                    .foregroundColor(.white)
                }
                .padding(.top, 50)
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
                .background(Color("Color"))

                
                VStack(alignment: .leading) {
                    Text("Mat khau cu")
                    
                    TextField("Nhap lai mat khau cu", text: $password)
                        .border(Color.white)
                        .padding()
                        .background(Color.white)
                        
                    
                        
                    
                    Text("Mat khau moi")
                    
                    TextField("Nhap mat khau moi", text: $Newpassword)
                        .border(Color.white)
                        .padding()
                        .background(Color.white)

                    
                    Text("Xac nhan mat khau moi")
                    
                    TextField("Nhap lai mat khau moi", text: $Renewpassword)
                        .border(Color.white)
                        .padding()
                        .background(Color.white)
          
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

struct ChangePassword_Previews: PreviewProvider {
    static var previews: some View {
        ChangePassword()
    }
}
