//
//  Login.swift
//  App_conmuc
//
//  Created by Thanh Duy on 26/01/2021.
//

import SwiftUI

struct Login: View {
    @State private var mail = ""
    @State private var password = ""
    
    @State private var isPresented = false
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
            Text("Email")
            
            TextField("Nhap email cua ban", text: $mail)
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            
            Text("Mat khau")
                
            
            SecureField("Nhap mat khau cua ban", text: $password)
                .padding()
                .border(Color.black)
            
            
        }.padding(.horizontal, 30)
            .padding(.vertical)
            
            Button(action: {
                self.isPresented.toggle()
            }, label: {
                Text("Dang Nhap")
                    .font(.title)
                    .foregroundColor(.white)
            })
            .padding()
            .frame(width: (UIScreen.main.bounds.width - 60))
            .background(Color.init("Color"))
            .fullScreenCover(isPresented: $isPresented, content: {
                Event()
            })
        }

    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
